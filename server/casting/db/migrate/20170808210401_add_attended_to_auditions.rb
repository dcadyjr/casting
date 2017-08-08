class AddAttendedToAuditions < ActiveRecord::Migration[5.1]
  def change
    add_column :auditions, :attended, :boolean
    add_column :auditions, :time, :string

    add_reference :auditions, :actors, foreign_key: true
    add_reference :auditions, :roles, foreign_key: true
  end
end
