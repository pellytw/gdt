class TacticasController < ApplicationController
  before_action :set_tactica, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tacticas = Tactica.all
    respond_with(@tacticas)
  end

  def show
    respond_with(@tactica)
  end

  def new
    @tactica = Tactica.new
    respond_with(@tactica)
  end

  def edit
  end

  def create
    @tactica = Tactica.new(tactica_params)
    @tactica.save
    respond_with(@tactica)
  end

  def update
    @tactica.update(tactica_params)
    respond_with(@tactica)
  end

  def destroy
    @tactica.destroy
    respond_with(@tactica)
  end

  private
    def set_tactica
      @tactica = Tactica.find(params[:id])
    end

    def tactica_params
      params.require(:tactica).permit(:nombre)
    end
end
