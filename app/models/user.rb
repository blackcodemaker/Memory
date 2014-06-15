class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :user_settings, inverse_of: :user, dependent: :destroy

  delegate :spaced_time_interval, :spaced_time_interval_minutes,
    to: :user_settings

  def full_name
    "#{first_name} #{last_name}"
  end
end
