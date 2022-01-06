class UsersController < ApplicationController

    def show
        user = User.find_by(id: session[:user_id])
        render json: user
    end

    def favorite_words
        user = User.find_by(id: params[:id])
        fav_words = user.favorites
        render json: fav_words
    end

    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation)
    end
end
