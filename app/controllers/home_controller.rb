class HomeController < ApplicationController
  def home
    @med = Mediaobject.where(uid: current_user.id)
    @user ||= User.find_by(id: session[:user_id])
  end
end
