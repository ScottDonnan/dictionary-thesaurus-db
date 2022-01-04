class UsersController < ApplicationController

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def favorite_words
        user = User.find_by(id: params[:id])
        fav_words = user.favorites
        render json: fav_words
    end
end
