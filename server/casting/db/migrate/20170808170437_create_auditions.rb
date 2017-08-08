class CreateAuditions < ActiveRecord::Migration[5.1]
  def change
    create_table :auditions do |t|

      t.timestamps
    end
  end
end
