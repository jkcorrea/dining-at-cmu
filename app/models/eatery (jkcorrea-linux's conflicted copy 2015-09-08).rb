class Eatery < ActiveRecord::Base
  belongs_to :location
  has_many :open_blocks

  scope :open, -> { joins(:open_blocks).where( }

  EATERY_TYPE = ["Full Service", "Snack Only"]

  def open(at = Time.now)
    time = at.seconds_since_midnight
    day = at.wday
    joins(:open_blocks)
      .where("open_blocks.weekday = ? AND open_blocks.start_at < ? AND open_blocks.end_at > ?", day, time, time)
  end
end
