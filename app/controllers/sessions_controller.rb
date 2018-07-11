class SessionsController < ApplicationController
  def new

  end

  def create
    if request.env['omniauth.auth']
      @user = User.find_by(email: request.env['omniauth.auth']["info"]["email"])

      if @user 
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      end
    else
      @user = User.find_by(email: params[:user][:email])

      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        render :new
      end
    end

  end

  def logout

  end
end
