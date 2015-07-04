class TorneosController < ApplicationController
  before_action :set_torneo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @torneos = Torneo.all
    respond_with(@torneos)
  end

  def show
    respond_with(@torneo)
  end

  def new
    @torneo = Torneo.new
    respond_with(@torneo)
  end

  def edit
  end

  def create
    @torneo = Torneo.new(torneo_params)
    @torneo.save
    respond_with(@torneo)
  end

  def update
    @torneo.update(torneo_params)
    respond_with(@torneo)
  end

  def destroy
    @torneo.destroy
    respond_with(@torneo)
  end

  private
    def set_torneo
      @torneo = Torneo.find(params[:id])
    end

    def torneo_params
      params.require(:torneo).permit(:nombre)
    end
end
