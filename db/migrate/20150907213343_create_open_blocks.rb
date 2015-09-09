class CreateOpenBlocks < ActiveRecord::Migration
  def change
    create_table :open_blocks do |t|
      t.float :start_at
      t.float :end_at
      t.integer :weekday
      t.references :eatery

      t.timestamps null: false
    end
  end
end
