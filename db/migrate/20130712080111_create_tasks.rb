class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :project
      t.string :name
      t.text :description
      t.string :priority

      t.timestamps
    end
  end
end
