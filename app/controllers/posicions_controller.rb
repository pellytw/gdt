class PosicionsController < ApplicationController
  before_action :set_posicion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @posicions = Posicion.all
    respond_with(@posicions)
  end

  def show
    respond_with(@posicion)
  end

  def new
    @posicion = Posicion.new
    respond_with(@posicion)
  end

  def edit
  end

  def create
    @posicion = Posicion.new(posicion_params)
    @posicion.save
    respond_with(@posicion)
  end

  def update
    @posicion.update(posicion_params)
    respond_with(@posicion)
  end

  def destroy
    @posicion.destroy
    respond_with(@posicion)
  end

  private
    def set_posicion
      @posicion = Posicion.find(params[:id])
    end

    def posicion_params
      params.require(:posicion).permit(:nombre, :imagen)
    end
end
