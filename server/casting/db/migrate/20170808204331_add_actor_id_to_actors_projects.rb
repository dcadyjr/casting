class AddActorIdToActorsProjects < ActiveRecord::Migration[5.1]
  def change

    add_reference :actors_projects, :actors, foreign_key: true
    add_reference :actors_projects, :projects, foreign_key: true
    
  end
end
