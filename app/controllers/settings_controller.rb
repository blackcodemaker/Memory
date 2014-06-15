class SettingsController < ApplicationController
  before_action :authenticate_user!

  def show
    @user ||= User.find(current_user.id).decorate
    #UserDecorator.decorate(user) if user
  end

  #private

  #def user
  #  @user ||= User.find(current_user.id)
  #end
end
