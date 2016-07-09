class SessionController < ApplicationController
  before_action :authenticate, :only => [:new]

    def new

    end

    def create

    user = User.find_by :email => params[:email]

    if user.present?
    session[:user_id] = user.id
    flash[:success] = "A user was found and password was correct"
    redirect_to pages_path
    else
    flash[:error] = "Invalid email or password"
    redirect_to login_path
    end


    end

    def destroy

    session[:user_id] = nil
    flash[:success] = "Successfully logged out"
    redirect_to login_path
    end
private
def authenticate
redirect_to users_path if @current_user.present?
end
end
