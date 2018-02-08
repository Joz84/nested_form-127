class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      # t.integer :project_id
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
