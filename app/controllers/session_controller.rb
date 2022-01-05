class SessionController < ApplicationController
  def create
    user = User.find_by_username(params[:username])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user, status: :ok
    else
      rendon json: { errors: "username or password is invalid" }, status: :unauthorized
    end
  end

  def destroy
    session.delete(:user_id)
  end

end
