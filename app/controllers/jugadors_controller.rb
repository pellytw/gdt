class JugadorsController < ApplicationController
  before_action :set_jugador, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @jugadors = Jugador.all
    respond_with(@jugadors)
  end

  def show
    respond_with(@jugador)
  end

  def new
    @jugador = Jugador.new
    respond_with(@jugador)
  end

  def edit
  end

  def create
    @jugador = Jugador.new(jugador_params)
    @jugador.save
    respond_with(@jugador)
  end

  def update
    @jugador.update(jugador_params)
    respond_with(@jugador)
  end

  def destroy
    @jugador.destroy
    respond_with(@jugador)
  end

  private
    def set_jugador
      @jugador = Jugador.find(params[:id])
    end

    def jugador_params
      params.require(:jugador).permit(:nombre, :apellido, :apodo, :fecha_nacimiento, :imagen, :club_id, :posicion_id)
    end
end
