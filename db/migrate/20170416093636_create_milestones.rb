class CreateMilestones < ActiveRecord::Migration[5.0]
  def change
    create_table :milestones do |t|
      t.string :name
      t.datetime :delivery_date
      t.string :description
      t.string :status
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
