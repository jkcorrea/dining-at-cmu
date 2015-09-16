module ApplicationHelper
  def seconds_to_offset(seconds)
    100 * (seconds / (60 * 60))
  end
end
