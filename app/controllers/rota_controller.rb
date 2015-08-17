class RotaController < ApplicationController
  before_action :authenticate_user!
  before_action :set_users
  before_action :user_count
  before_action :set_usernums
  before_action :set_rotum, only: [:show, :edit, :update, :destroy]
  before_filter only: [:create, :update, :destroy] do
    redirect_to :root unless current_user && current_user.admin?
  end

  respond_to :html

  def index
    @users = User.all.order('created_at ASC')
    @rota = Rotum.all.order('created_at ASC').page(params[:page]).per(1)
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

    def user_count
      @user_count = User.count
    end

    def set_usernums
      @user1 = User.find_by_id(1)
      @user2 = User.find_by_id(2)
      @user3 = User.find_by_id(3)
      @user4 = User.find_by_id(4)
      @user5 = User.find_by_id(5)
      @user6 = User.find_by_id(6)
      @user7 = User.find_by_id(7)
      @user8 = User.find_by_id(8)
      @user9 = User.find_by_id(9)
      @user10 = User.find_by_id(10)
      @user11 = User.find_by_id(11)
      @user12 = User.find_by_id(12)
      @user13 = User.find_by_id(13)
      @user14 = User.find_by_id(14)
      @user15 = User.find_by_id(15)
      @user16 = User.find_by_id(16)
      @user17 = User.find_by_id(17)
      @user18 = User.find_by_id(18)
      @user19 = User.find_by_id(19)
      @user20 = User.find_by_id(20)
      @user21 = User.find_by_id(21)
      @user22 = User.find_by_id(22)
      @user22 = User.find_by_id(22)
      @user22 = User.find_by_id(22)
      @user22 = User.find_by_id(22)
      @user22 = User.find_by_id(22)
      @user22 = User.find_by_id(22)
      @user22 = User.find_by_id(22)
      @user22 = User.find_by_id(22)
    end

    def set_users
      @users = User.all
    end

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
