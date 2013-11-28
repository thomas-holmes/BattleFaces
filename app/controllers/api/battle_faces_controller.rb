class Api::BattleFacesController < ApplicationController
  respond_to :json

  def index
    respond_with BattleFace.all
  end

  def show
    respond_with BattleFace.find(params[:id])
  end
end
