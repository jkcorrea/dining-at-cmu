class AddColumnsToEateries < ActiveRecord::Migration
  def change
    add_column :eateries, :hours, :string
    add_column :eateries, :category, :string
    add_column :eateries, :directions, :text
  end
end
