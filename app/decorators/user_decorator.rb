class UserDecorator < Draper::Decorator
  decorates_association :user_settings
  delegate_all

  def pretty_spaced_time_interval
    minutes = object.spaced_time_interval_minutes
    if minutes < 60
      "#{minutes} minutes"
    else
      hours = minutes / 60
      leftover_minutes = minutes % 60
      hour_part = hours == 1 ? "#{hours} hour" : "#{hours} hours"
      other_part = leftover_minutes == 0 ? "" : ", #{leftover_minutes} minutes"
      hour_part + other_part
    end
  end
end
