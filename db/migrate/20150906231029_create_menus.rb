class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :photo
      t.string :type
      t.references :eatery

      t.timestamps null: false
    end
  end
end
