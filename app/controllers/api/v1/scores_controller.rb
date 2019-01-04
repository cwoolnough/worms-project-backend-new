class Api::V1::ScoresController < ApplicationController

    def index
        @scores = Score.all
        render json: @scores
    end

    def create
        @score = Score.create(score: params[:score], user_id: params[:user_id])
        if @score.save
            render json: @score
        else
            render json: {error: 'unable to create score.'}, status: 400
        end
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
