class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.date :date
      t.integer :project_id
      t.integer :task_id
      t.integer :number

      t.timestamps
    end
  end
end
