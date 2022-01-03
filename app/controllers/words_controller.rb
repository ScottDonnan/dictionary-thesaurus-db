class WordsController < ApplicationController

    def create
        word = Word.create(word_params)
        render json: word
    end

    def word_params
        params.permit(:name)
    end
end
