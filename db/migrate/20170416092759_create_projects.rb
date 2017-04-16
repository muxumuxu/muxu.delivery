class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :short_description
      t.string :summary

      t.timestamps
    end
  end
end
