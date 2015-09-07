class Menu < ActiveRecord::Base
  belongs_to :eateries

  open_at =
    [
      ["6a", "12p", "2p", "5p", "7p", "9p"], # Monday
      ["6a", "12p", "2p", "5p", "7p", "9p"], # Tuesday
      ["6a", "12p", "2p", "5p", "7p", "9p"], # Tuesday
    ]
  # scopes for open/closed
  scope :open, -> { where() }

  MENU_TYPES = ["Main", "Specials"]
end


# Resnik
# CMC cafe/resnik
# taste of india
# tartans pizza

# UC
# Entropy
# Gallo
# Creperie
# Skibo

# Tepper
# The Exchange

# Wean
# La Prima

