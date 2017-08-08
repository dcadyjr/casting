class CreateAuditions < ActiveRecord::Migration[5.1]
  def change
    create_table :auditions do |t|
      t.primary_key :id
      t.integer :actors_id
      t.integer :role_id
      t.time :time
      t.boolean :attended

      t.timestamps
    end
  end
end
