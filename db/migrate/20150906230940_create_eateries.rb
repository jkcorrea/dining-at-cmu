class CreateEateries < ActiveRecord::Migration
  def change
    create_table :eateries do |t|
      t.string :name
      t.text :summary
      t.string :photo
      t.string :category
      t.text :directions
      t.references :location

      t.timestamps null: false
    end
  end
end
