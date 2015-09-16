class AddColorToEateries < ActiveRecord::Migration
  def change
    add_column :eateries, :color, :string
  end
end
