class AddCharNameToRoles < ActiveRecord::Migration[5.1]
  def change
    add_column :roles, :char_name, :string
    add_reference :roles, :projects, foreign_key: true
  end
end
