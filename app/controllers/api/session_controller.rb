class Api::SessionController < ApplicationController
  def create
    master_face = MasterFace.where("email = ?", params[:email]).first
    if master_face && master_face.authenticate(params[:password])
      render json: master_face.session_api_key, status: 201
    else
      render json: {}, status: 401
    end
  end
end
