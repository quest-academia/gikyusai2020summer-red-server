class Api::V1::QuestsController < ApplicationController

  def index
    quests = Quest.all
    render json: { data: quests, success: true }
  end

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

  def create
    # user = current_user
    quest = current_user.quests.create!(quest_params)
    # quest = user.Quest.new(quest_params)
    # quest.save!
    render json: { data: quest }  
  end

  private
    def quest_params
      params.require(:quest).permit(:title, :award, :image)
    end

end
