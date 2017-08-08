class CreateActorsProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :actors_projects do |t|

      t.timestamps
    end
  end
end
