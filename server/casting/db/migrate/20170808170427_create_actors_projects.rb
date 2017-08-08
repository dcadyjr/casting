class CreateActorsProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :actors_projects do |t|
      t.primary_key :id
      t.integer :actors_id
      t.integer :projects_id	
      		
      t.timestamps
    end
  end
end
