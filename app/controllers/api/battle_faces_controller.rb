class Api::BattleFacesController < ApplicationController
  respond_to :json

  def index
    respond_with BattleFace.all.where(master_face: current_master_face)
  end

  def show
    respond_with BattleFace.find(params[:id])
  end

  def new
    respond_with (1..3).map { create_random_battle_face }
  end

  private
  @@names = %w( Taco Fork Ducklings Piano Futon Pinecone Tiara )
  def create_random_battle_face
    current_master_face.battle_faces.create(
      name: @@names.sample,
      status: :pending,
      attack: Random.rand(1..100),
      defense: Random.rand(1..100),
      speed: Random.rand(1..100)
    )
  end
end
