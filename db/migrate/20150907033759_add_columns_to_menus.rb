class AddColumnsToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :type, :string
  end
end
