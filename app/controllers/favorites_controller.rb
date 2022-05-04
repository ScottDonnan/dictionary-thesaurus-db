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
        if favorite.valid?
            render json: favorite
        else 
            render json: {errors: favorite.errors.full_messages}
        end
    end

    def destroy
        favorite = Favorite.find_by(id: params[:id])
        if favorite
            favorite.destroy
            render json: "favorite deleted"
        else
            render json: {errors: "favorite not found"}, status: :not_found
        end
    end

    def favorites_params
        params.permit(:user_id, :name)
    end
end
