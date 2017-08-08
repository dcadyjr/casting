class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.primary_key :id
      t.string :char_name
      t.integer :projects_id
      t.timestamps
    end
  end
end
