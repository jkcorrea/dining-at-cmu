class Menu < ActiveRecord::Base
  belongs_to :eatery

  MENU_TYPES = ["Main", "Specials"]
end
