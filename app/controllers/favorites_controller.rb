class FavoritesController < ApplicationController

    def index
        favorites = Favorite.all
        render json: favorites
    end

    def show
        favorite = Favorite.find_by(id: params[:id])
        render json: favorite
    end

    def create
        favorite = Favorite.create(favorites_params)
        render json: favorite
    end

    def favorites_params
        params.permit(:user_id, :word_id)
    end
end
