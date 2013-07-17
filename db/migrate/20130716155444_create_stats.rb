class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.date :date
      t.integer :statable_id
      t.string :statable_type
      t.integer :number
      t.belongs_to :statable, index: true, polymorphic: true

      t.timestamps
    end

    drop_table(:statistics)

  end
end
