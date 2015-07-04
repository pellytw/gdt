class ValorPuntajesController < ApplicationController
  before_action :set_valor_puntaje, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @valor_puntajes = ValorPuntaje.all
    respond_with(@valor_puntajes)
  end

  def show
    respond_with(@valor_puntaje)
  end

  def new
    @valor_puntaje = ValorPuntaje.new
    respond_with(@valor_puntaje)
  end

  def edit
  end

  def create
    @valor_puntaje = ValorPuntaje.new(valor_puntaje_params)
    @valor_puntaje.save
    respond_with(@valor_puntaje)
  end

  def update
    @valor_puntaje.update(valor_puntaje_params)
    respond_with(@valor_puntaje)
  end

  def destroy
    @valor_puntaje.destroy
    respond_with(@valor_puntaje)
  end

  private
    def set_valor_puntaje
      @valor_puntaje = ValorPuntaje.find(params[:id])
    end

    def valor_puntaje_params
      params.require(:valor_puntaje).permit(:doble_amarilla, :roja_directa, :amarilla, :figura, :penal_errado, :gol_penal, :gol, :penal_atajado, :valla_invicta, :chenemigo)
    end
end
