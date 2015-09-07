class Menu < ActiveRecord::Base
  belongs_to :eateries

  MENU_TYPES = ["Main", "Specials"]
end
