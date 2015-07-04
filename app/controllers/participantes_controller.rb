class ParticipantesController < ApplicationController
  before_action :set_participante, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @participantes = Participante.all
    respond_with(@participantes)
  end

  def show
    respond_with(@participante)
  end

  def new
    @participante = Participante.new
    respond_with(@participante)
  end

  def edit
  end

  def create
    @participante = Participante.new(participante_params)
    @participante.save
    respond_with(@participante)
  end

  def update
    @participante.update(participante_params)
    respond_with(@participante)
  end

  def destroy
    @participante.destroy
    respond_with(@participante)
  end

  private
    def set_participante
      @participante = Participante.find(params[:id])
    end

    def participante_params
      params.require(:participante).permit(:nombre, :apellido, :apodo, :imagen, :user_id)
    end
end
