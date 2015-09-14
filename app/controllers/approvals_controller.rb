class ApprovalsController < ApplicationController
  before_action :set_approval, only: [:show, :edit, :update, :destroy]
  before_action :set_users
  before_action :user_count
  before_filter :authenticate_user!
  before_filter only: [:push, :destroy, :index] do
    redirect_to :root unless current_user && current_user.admin?
  end
  before_filter do
    redirect_to :root unless current_user.approved?
  end

  respond_to :html

  def index
    @approvals = Approval.all
    respond_with(@approvals)
  end

  def push
    @approval = Approval.find(params[:id])
    @rotum = Rotum.find(params[:rota_id])

    @rotum.update_attributes(:grid11 => @approval.grid11, :grid12 => @approval.grid12, :grid13 => @approval.grid13, :grid14 => @approval.grid14, :grid15 => @approval.grid15, :grid16 => @approval.grid16, :grid17 => @approval.grid17, :grid21 => @approval.grid21, :grid22 => @approval.grid22, :grid23 => @approval.grid23, :grid24 => @approval.grid24, :grid25 => @approval.grid25, :grid26 => @approval.grid26, :grid27 => @approval.grid27, :grid31 => @approval.grid31, :grid32 => @approval.grid32, :grid33 => @approval.grid33, :grid34 => @approval.grid34, :grid35 => @approval.grid35, :grid36 => @approval.grid36, :grid37 => @approval.grid37, :grid41 => @approval.grid41, :grid42 => @approval.grid42, :grid43 => @approval.grid43, :grid44 => @approval.grid44, :grid45 => @approval.grid45, :grid46 => @approval.grid46, :grid47 => @approval.grid47, :grid51 => @approval.grid51, :grid52 => @approval.grid52, :grid53 => @approval.grid53, :grid54 => @approval.grid54, :grid55 => @approval.grid55, :grid56 => @approval.grid56, :grid57 => @approval.grid57, :grid61 => @approval.grid61, :grid62 => @approval.grid62, :grid63 => @approval.grid63, :grid64 => @approval.grid64, :grid65 => @approval.grid65, :grid66 => @approval.grid66, :grid67 => @approval.grid67, :grid71 => @approval.grid71, :grid72 => @approval.grid72, :grid73 => @approval.grid73, :grid74 => @approval.grid74, :grid75 => @approval.grid75, :grid76 => @approval.grid76, :grid77 => @approval.grid77, :grid81 => @approval.grid81, :grid82 => @approval.grid82, :grid83 => @approval.grid83, :grid84 => @approval.grid84, :grid85 => @approval.grid85, :grid86 => @approval.grid86, :grid87 => @approval.grid87, :grid91 => @approval.grid91, :grid92 => @approval.grid92, :grid93 => @approval.grid93, :grid94 => @approval.grid94, :grid95 => @approval.grid95, :grid96 => @approval.grid96, :grid97 => @approval.grid97, :grid101 => @approval.grid101, :grid102 => @approval.grid102, :grid103 => @approval.grid103, :grid104 => @approval.grid104, :grid105 => @approval.grid105, :grid106 => @approval.grid106, :grid107 => @approval.grid107, :grid111 => @approval.grid111, :grid112 => @approval.grid112, :grid113 => @approval.grid113, :grid114 => @approval.grid114, :grid115 => @approval.grid115, :grid116 => @approval.grid116, :grid117 => @approval.grid117)
    @approval.destroy
    redirect_to root_path
  end

  def attrs_for_push
    # Let's select only attributes we need.
    @approval.attributes.slice(:grid11, :grid12, :grid13, :grid14, :grid15, :grid16, :grid17, :grid21, :grid22, :grid23, :grid24, :grid25, :grid26, :grid27, :grid31, :grid32, :grid33, :grid34, :grid35, :grid36, :grid37, :grid41, :grid42, :grid43, :grid44, :grid45, :grid46, :grid47, :grid51, :grid52, :grid53, :grid54, :grid55, :grid56, :grid57, :grid61, :grid62, :grid63, :grid64, :grid65, :grid66, :grid67, :grid71, :grid72, :grid73, :grid74, :grid75, :grid76, :grid77, :grid81, :grid82, :grid83, :grid84, :grid85, :grid86, :grid87, :grid91, :grid92, :grid93, :grid94, :grid95, :grid96, :grid97, :grid101, :grid102, :grid103, :grid104, :grid105, :grid106, :grid107, :grid111, :grid112, :grid113, :grid114, :grid115, :grid116, :grid117)
  end

  def show
    redirect_to action: "index"
  end

  def new
    @rota = Rotum.find(params[:id])
    @approval = Approval.new
    respond_with(@approval)
  end

  def edit
  end

  def create
    @approval = Approval.new(approval_params)
    @approval.save
    respond_with(@approval)
  end

  def update
    @approval.update(approval_params)
    respond_with(@approval)
  end

  def destroy
    @approval.destroy
    respond_with(@approval)
  end

  private

    def is_approved

    end

    def user_count
      @user_count = User.count
    end

    def set_users
      @users = User.all.order('created_at ASC')
    end

    def is_admin

    end

    def set_approval
      @approval = Approval.find(params[:id])
    end

    def set_rotum
      @rotum = Rotum.find(params[:rota_id])
    end

    def approval_params
      params.require(:approval).permit(:userchange, :week, :grid11, :grid12, :grid13, :grid14, :grid15, :grid16, :grid17, :grid21, :grid22, :grid23, :grid24, :grid25, :grid26, :grid27, :grid31, :grid32, :grid33, :grid34, :grid35, :grid36, :grid37, :grid41, :grid42, :grid43, :grid44, :grid45, :grid46, :grid47, :grid51, :grid52, :grid53, :grid54, :grid55, :grid56, :grid57, :grid61, :grid62, :grid63, :grid64, :grid65, :grid66, :grid67, :grid71, :grid72, :grid73, :grid74, :grid75, :grid76, :grid77, :grid81, :grid82, :grid83, :grid84, :grid85, :grid86, :grid87, :grid91, :grid92, :grid93, :grid94, :grid95, :grid96, :grid97, :grid101, :grid102, :grid103, :grid104, :grid105, :grid106, :grid107, :grid111, :grid112, :grid113, :grid114, :grid115, :grid116, :grid117, :rotumid)
    end

    def push_params
      params.require(:approval).permit(:grid11, :grid12, :grid13, :grid14, :grid15, :grid16, :grid17, :grid21, :grid22, :grid23, :grid24, :grid25, :grid26, :grid27, :grid31, :grid32, :grid33, :grid34, :grid35, :grid36, :grid37, :grid41, :grid42, :grid43, :grid44, :grid45, :grid46, :grid47, :grid51, :grid52, :grid53, :grid54, :grid55, :grid56, :grid57, :grid61, :grid62, :grid63, :grid64, :grid65, :grid66, :grid67, :grid71, :grid72, :grid73, :grid74, :grid75, :grid76, :grid77, :grid81, :grid82, :grid83, :grid84, :grid85, :grid86, :grid87, :grid91, :grid92, :grid93, :grid94, :grid95, :grid96, :grid97, :grid101, :grid102, :grid103, :grid104, :grid105, :grid106, :grid107, :grid111, :grid112, :grid113, :grid114, :grid115, :grid116, :grid117)
    end

    def rotum_params
      params.require(:rotum).permit(:week, :grid11, :grid12, :grid13, :grid14, :grid15, :grid16, :grid17, :grid21, :grid22, :grid23, :grid24, :grid25, :grid26, :grid27, :grid31, :grid32, :grid33, :grid34, :grid35, :grid36, :grid37, :grid41, :grid42, :grid43, :grid44, :grid45, :grid46, :grid47, :grid51, :grid52, :grid53, :grid54, :grid55, :grid56, :grid57, :grid61, :grid62, :grid63, :grid64, :grid65, :grid66, :grid67, :grid71, :grid72, :grid73, :grid74, :grid75, :grid76, :grid77, :grid81, :grid82, :grid83, :grid84, :grid85, :grid86, :grid87, :grid91, :grid92, :grid93, :grid94, :grid95, :grid96, :grid97, :grid101, :grid102, :grid103, :grid104, :grid105, :grid106, :grid107, :grid111, :grid112, :grid113, :grid114, :grid115, :grid116, :grid117)
    end
end
