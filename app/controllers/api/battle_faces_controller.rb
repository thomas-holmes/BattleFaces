class Api::BattleFacesController < ApplicationController
  respond_to :json

  def index
    respond_with BattleFace.all.where(master_face: current_master_face).where(status: :active)
  end

  def show
    respond_with BattleFace.find(params[:id])
  end

  def new
    proposal = current_master_face.battle_faces.where(status: :pending)
    if proposal.empty?
      proposal = (1..3).map { create_random_battle_face }
    end

    respond_with proposal
  end

  def create
    id = params[:id]
    chosen = BattleFace.find(id)
    if chosen.master_face == current_master_face
      chosen.status = :active
      chosen.save
      current_master_face.battle_faces.where(status: :pending).each(&:delete)
      render json: chosen, status: 201
    else
      render json: current_master_face.where(status: :pending), status: 400
    end
  end

  private
  @@names = %w( Taco Fork Duckling Piano Futon Pinecone Tiara )
  def create_random_battle_face
    current_master_face.battle_faces.create(
      name: @@names.sample,
      status: :pending,
      level: Random.rand(1..3),
      attack: Random.rand(1..100),
      defense: Random.rand(1..100),
      speed: Random.rand(1..100)
    )
  end
end
