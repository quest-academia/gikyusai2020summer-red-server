class Api::V1::QuestsController < ApplicationController
  def show
    quest = Quest.find(params[:id])
    render json: { data: quest, success: true }
  end
end
