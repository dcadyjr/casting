class AddProjectNameToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :project_name, :string
    add_column :projects, :production_co, :string
    add_column :projects, :roles, :string
    add_column :projects, :director, :string

  end
end
