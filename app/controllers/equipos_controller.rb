class EquiposController < ApplicationController
  before_action :set_equipo, only: [:show, :edit, :update, :destroy]
  before_action :jugadores_equipo, only: [:edit]

  respond_to :html

  def index
    respond_to do |format|
      format.html
      format.json { render json: EquipoDatatable.new(view_context) }
    end
  end

  def show
    respond_with(@equipo)
  end

  def new
    @equipo = Equipo.new
    respond_with(@equipo)
  end

  def edit
  end

  def create
    @equipo = Equipo.new(equipo_params)
    @equipo.save
    respond_with(@equipo)
  end

  def update
    @equipo.update(equipo_params)
    respond_with(@equipo)
  end

  def destroy
    @equipo.destroy
    respond_with(@equipo)
  end

  private
    def set_equipo
      @equipo = Equipo.find(params[:id])
    end

    def equipo_params
      params.require(:equipo).permit(:nombre, :imagen, :participante_id, :tactica_id)
    end

    def jugadores_equipo
      jugadores_equipo = JugadorEquipo.where(equipo_id: @equipo.id)
      jugadores_equipo_ids = jugadores_equipo.pluck(:jugador_id)
      @jugadores = Jugador.where(id: jugadores_equipo_ids)
    end
end
