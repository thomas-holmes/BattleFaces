class Api::MasterFacesController < ApplicationController
  respond_to :json
  skip_before_action :ensure_authenticated_master_face, only: [:create]

  def index
    respond_with MasterFace.all
  end

  def show
    respond_with MasterFace.find(params[:id])
  end

  def create
    master_face = MasterFace.create(master_face_params)
    if master_face.new_record?
      render json: { errors: master_face.errors.messages }, status: 422
    else
      render json: master_face.session_api_key, status: 201
    end
  end

  private
  def master_face_params
    params.require(:master_face).permit(:password, :password_confirmation, :email, :name)
  end
end
