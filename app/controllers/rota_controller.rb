class RotaController < ApplicationController
  before_action :authenticate_user!
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

    def approval_params
      params.require(:approval).permit(:week, :grid11, :grid12, :grid13, :grid14, :grid15, :grid16, :grid17, :grid21, :grid22, :grid23, :grid24, :grid25, :grid26, :grid27, :grid31, :grid32, :grid33, :grid34, :grid35, :grid36, :grid37, :grid41, :grid42, :grid43, :grid44, :grid45, :grid46, :grid47, :grid51, :grid52, :grid53, :grid54, :grid55, :grid56, :grid57, :grid61, :grid62, :grid63, :grid64, :grid65, :grid66, :grid67, :grid71, :grid72, :grid73, :grid74, :grid75, :grid76, :grid77, :grid81, :grid82, :grid83, :grid84, :grid85, :grid86, :grid87, :grid91, :grid92, :grid93, :grid94, :grid95, :grid96, :grid97, :grid101, :grid102, :grid103, :grid104, :grid105, :grid106, :grid107, :grid111, :grid112, :grid113, :grid114, :grid115, :grid116, :grid117, :rotumid)
    end

    def rotum_params
      params.require(:rotum).permit(:week, :grid11, :grid12, :grid13, :grid14, :grid15, :grid16, :grid17, :grid21, :grid22, :grid23, :grid24, :grid25, :grid26, :grid27, :grid31, :grid32, :grid33, :grid34, :grid35, :grid36, :grid37, :grid41, :grid42, :grid43, :grid44, :grid45, :grid46, :grid47, :grid51, :grid52, :grid53, :grid54, :grid55, :grid56, :grid57, :grid61, :grid62, :grid63, :grid64, :grid65, :grid66, :grid67, :grid71, :grid72, :grid73, :grid74, :grid75, :grid76, :grid77, :grid81, :grid82, :grid83, :grid84, :grid85, :grid86, :grid87, :grid91, :grid92, :grid93, :grid94, :grid95, :grid96, :grid97, :grid101, :grid102, :grid103, :grid104, :grid105, :grid106, :grid107, :grid111, :grid112, :grid113, :grid114, :grid115, :grid116, :grid117)
    end
end
