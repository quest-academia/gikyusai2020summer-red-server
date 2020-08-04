class Api::V1::QuestsController < ApplicationController
  def show
    quest = Quest.find(params[:id])
    render json: { data: quest, success: true }
  end

  def destroy
    quest = Quest.find(params[:id])
    quest.destroy
    render json: { success: true }
  end

  def update
    quest = Quest.find(params[:id])
    quest.update(quest_params)
    render json: { data: quest }
  end

  private
    def quest_params
      params.require(:quest).permit(:title, :award)
    end

end
