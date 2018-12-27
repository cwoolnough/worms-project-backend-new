class Api::V1::ScoresController < ApplicationController

    def index
        @scores = Score.all
        render json: @scores
    end

    def show
        @score = Score.find_by(id: params[:id])
        if @score
            render json: @score
        else
            render json: {error: 'Score not found.'}, status: 400
        end 
    end

end
