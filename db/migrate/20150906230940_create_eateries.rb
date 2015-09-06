class CreateEateries < ActiveRecord::Migration
  def change
    create_table :eateries do |t|
      t.string :name
      t.text :summary
      t.string :photo

      t.timestamps null: false
    end
  end
end
