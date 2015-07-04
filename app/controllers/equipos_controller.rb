class EquiposController < ApplicationController
  before_action :set_equipo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @equipos = Equipo.all
    respond_with(@equipos)
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
end
