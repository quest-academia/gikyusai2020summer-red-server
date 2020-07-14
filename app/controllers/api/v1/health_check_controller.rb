class Api::V1::HealthCheckController < ApplicationController
  def show
    render json: { status: "alive" }
  end
end
