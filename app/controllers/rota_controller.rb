class RotaController < ApplicationController
  before_action :set_rotum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @rota = Rotum.all
    respond_with(@rota)
  end

  def show
    respond_with(@rotum)
  end

  def new
    @rotum = Rotum.new
    respond_with(@rotum)
  end

  def edit
  end

  def create
    @rotum = Rotum.new(rotum_params)
    @rotum.save
    respond_with(@rotum)
  end

  def update
    @rotum.update(rotum_params)
    respond_with(@rotum)
  end

  def destroy
    @rotum.destroy
    respond_with(@rotum)
  end

  private
    def set_rotum
      @rotum = Rotum.find(params[:id])
    end

    def rotum_params
      params.require(:rotum).permit(:week)
    end
end
