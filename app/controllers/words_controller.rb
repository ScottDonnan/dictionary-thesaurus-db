class WordsController < ApplicationController

    def index
        words = Word.all

        render json: words
    end

    def word_search_list
        #render an object with name: times_searched sorted by times_searched
        words = Word.all

        sorted = words.sort_by {|key, val| key[:times_searched]}
        reversed = sorted.reverse
        top_ten = []
        for i in 0..10
            top_ten.push(reversed[i])
        end

        render json: top_ten
    end

    def create
        word = Word.find_by(name: params[:name])
        if word
            word.times_searched = word.times_searched + 1
            word.save
            render json: word
        else
            new_word = Word.create(name: params[:name], times_searched: 1)
            render json: new_word
        end
    end

end
