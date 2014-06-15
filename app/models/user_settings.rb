class UserSettings < ActiveRecord::Base
  belongs_to :user, inverse_of: :user_settings

  validates :spaced_time_interval_minutes, presence: true

  def spaced_time_interval
    @spaced_time_interval ||= spaced_time_interval_minutes.minutes
  end
end
