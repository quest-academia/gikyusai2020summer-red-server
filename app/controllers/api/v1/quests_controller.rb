class Api::V1::QuestsController < ApplicationController

  def index
    quests = Quest.all
    render json: { data: quests, success: true }
  end

  def show
    @quest = Quest.find(params[:id])
    @current_user = current_user
    render 'show', formats: 'json', handlers: 'jbuilder'
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
