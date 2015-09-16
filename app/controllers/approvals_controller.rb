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

    @rotum.update_attributes(:grid11 => @approval.grid11, :grid12 => @approval.grid12, :grid13 => @approval.grid13, :grid14 => @approval.grid14, :grid15 => @approval.grid15, :grid16 => @approval.grid16, :grid17 => @approval.grid17, :grid21 => @approval.grid21, :grid22 => @approval.grid22, :grid23 => @approval.grid23, :grid24 => @approval.grid24, :grid25 => @approval.grid25, :grid26 => @approval.grid26, :grid27 => @approval.grid27, :grid31 => @approval.grid31, :grid32 => @approval.grid32, :grid33 => @approval.grid33, :grid34 => @approval.grid34, :grid35 => @approval.grid35, :grid36 => @approval.grid36, :grid37 => @approval.grid37, :grid41 => @approval.grid41, :grid42 => @approval.grid42, :grid43 => @approval.grid43, :grid44 => @approval.grid44, :grid45 => @approval.grid45, :grid46 => @approval.grid46, :grid47 => @approval.grid47, :grid51 => @approval.grid51, :grid52 => @approval.grid52, :grid53 => @approval.grid53, :grid54 => @approval.grid54, :grid55 => @approval.grid55, :grid56 => @approval.grid56, :grid57 => @approval.grid57, :grid61 => @approval.grid61, :grid62 => @approval.grid62, :grid63 => @approval.grid63, :grid64 => @approval.grid64, :grid65 => @approval.grid65, :grid66 => @approval.grid66, :grid67 => @approval.grid67, :grid71 => @approval.grid71, :grid72 => @approval.grid72, :grid73 => @approval.grid73, :grid74 => @approval.grid74, :grid75 => @approval.grid75, :grid76 => @approval.grid76, :grid77 => @approval.grid77, :grid81 => @approval.grid81, :grid82 => @approval.grid82, :grid83 => @approval.grid83, :grid84 => @approval.grid84, :grid85 => @approval.grid85, :grid86 => @approval.grid86, :grid87 => @approval.grid87, :grid91 => @approval.grid91, :grid92 => @approval.grid92, :grid93 => @approval.grid93, :grid94 => @approval.grid94, :grid95 => @approval.grid95, :grid96 => @approval.grid96, :grid97 => @approval.grid97, :grid101 => @approval.grid101, :grid102 => @approval.grid102, :grid103 => @approval.grid103, :grid104 => @approval.grid104, :grid105 => @approval.grid105, :grid106 => @approval.grid106, :grid107 => @approval.grid107, :grid111 => @approval.grid111, :grid112 => @approval.grid112, :grid113 => @approval.grid113, :grid114 => @approval.grid114, :grid115 => @approval.grid115, :grid116 => @approval.grid116, :grid117 => @approval.grid117,:grid121 => @approval.grid121,:grid122 => @approval.grid122,:grid123 => @approval.grid123,:grid124 => @approval.grid124,:grid125 => @approval.grid125,:grid126 => @approval.grid126,:grid127 => @approval.grid127,:grid131 => @approval.grid131,:grid132 => @approval.grid132,:grid133 => @approval.grid133,:grid134 => @approval.grid134,:grid135 => @approval.grid135,:grid136 => @approval.grid136,:grid137 => @approval.grid137,:grid141 => @approval.grid141,:grid142 => @approval.grid142,:grid143 => @approval.grid143,:grid144 => @approval.grid144,:grid145 => @approval.grid145,:grid146 => @approval.grid146,:grid147 => @approval.grid147,:grid151 => @approval.grid151,:grid152 => @approval.grid152,:grid153 => @approval.grid153,:grid154 => @approval.grid154,:grid155 => @approval.grid155,:grid156 => @approval.grid156,:grid157 => @approval.grid157,:grid161 => @approval.grid161,:grid162 => @approval.grid162,:grid163 => @approval.grid163,:grid164 => @approval.grid164,:grid165 => @approval.grid165,:grid166 => @approval.grid166,:grid167 => @approval.grid167,:grid171 => @approval.grid171,:grid172 => @approval.grid172,:grid173 => @approval.grid173,:grid174 => @approval.grid174,:grid175 => @approval.grid175,:grid176 => @approval.grid176,:grid177 => @approval.grid177,:grid181 => @approval.grid181,:grid182 => @approval.grid182,:grid183 => @approval.grid183,:grid184 => @approval.grid184,:grid185 => @approval.grid185,:grid186 => @approval.grid186,:grid187 => @approval.grid187,:grid191 => @approval.grid191,:grid192 => @approval.grid192,:grid193 => @approval.grid193,:grid194 => @approval.grid194,:grid195 => @approval.grid195,:grid196 => @approval.grid196,:grid197 => @approval.grid197,:grid201 => @approval.grid201,:grid202 => @approval.grid202,:grid203 => @approval.grid203,:grid204 => @approval.grid204,:grid205 => @approval.grid205,:grid206 => @approval.grid206,:grid207 => @approval.grid207,:grid211 => @approval.grid211,:grid212 => @approval.grid212,:grid213 => @approval.grid213,:grid214 => @approval.grid214,:grid215 => @approval.grid215,:grid216 => @approval.grid216,:grid217 => @approval.grid217,:grid221 => @approval.grid221,:grid222 => @approval.grid222,:grid223 => @approval.grid223,:grid224 => @approval.grid224,:grid225 => @approval.grid225,:grid226 => @approval.grid226,:grid227 => @approval.grid227,:grid231 => @approval.grid231,:grid232 => @approval.grid232,:grid233 => @approval.grid233,:grid234 => @approval.grid234,:grid235 => @approval.grid235,:grid236 => @approval.grid236,:grid237 => @approval.grid237,:grid241 => @approval.grid241,:grid242 => @approval.grid242,:grid243 => @approval.grid243,:grid244 => @approval.grid244,:grid245 => @approval.grid245,:grid246 => @approval.grid246,:grid247 => @approval.grid247,:grid251 => @approval.grid251,:grid252 => @approval.grid252,:grid253 => @approval.grid253,:grid254 => @approval.grid254,:grid255 => @approval.grid255,:grid256 => @approval.grid256,:grid257 => @approval.grid257,:grid261 => @approval.grid261,:grid262 => @approval.grid262,:grid263 => @approval.grid263,:grid264 => @approval.grid264,:grid265 => @approval.grid265,:grid266 => @approval.grid266,:grid267 => @approval.grid267,:grid271 => @approval.grid271,:grid272 => @approval.grid272,:grid273 => @approval.grid273,:grid274 => @approval.grid274,:grid275 => @approval.grid275,:grid276 => @approval.grid276,:grid277 => @approval.grid277,:grid281 => @approval.grid281,:grid282 => @approval.grid282,:grid283 => @approval.grid283,:grid284 => @approval.grid284,:grid285 => @approval.grid285,:grid286 => @approval.grid286,:grid287 => @approval.grid287,:grid291 => @approval.grid291,:grid292 => @approval.grid292,:grid293 => @approval.grid293,:grid294 => @approval.grid294,:grid295 => @approval.grid295,:grid296 => @approval.grid296,:grid297 => @approval.grid297,:grid301 => @approval.grid301,:grid302 => @approval.grid302,:grid303 => @approval.grid303,:grid304 => @approval.grid304,:grid305 => @approval.grid305,:grid306 => @approval.grid306,:grid307 => @approval.grid307)
    @approval.destroy
    redirect_to root_path
  end

  def attrs_for_push
    # Let's select only attributes we need.
    @approval.attributes.slice(:grid11, :grid12, :grid13, :grid14, :grid15, :grid16, :grid17, :grid21, :grid22, :grid23, :grid24, :grid25, :grid26, :grid27, :grid31, :grid32, :grid33, :grid34, :grid35, :grid36, :grid37, :grid41, :grid42, :grid43, :grid44, :grid45, :grid46, :grid47, :grid51, :grid52, :grid53, :grid54, :grid55, :grid56, :grid57, :grid61, :grid62, :grid63, :grid64, :grid65, :grid66, :grid67, :grid71, :grid72, :grid73, :grid74, :grid75, :grid76, :grid77, :grid81, :grid82, :grid83, :grid84, :grid85, :grid86, :grid87, :grid91, :grid92, :grid93, :grid94, :grid95, :grid96, :grid97, :grid101, :grid102, :grid103, :grid104, :grid105, :grid106, :grid107, :grid111, :grid112, :grid113, :grid114, :grid115, :grid116, :grid117,:grid121,:grid122,:grid123,:grid124,:grid125,:grid126,:grid127,:grid131,:grid132,:grid133,:grid134,:grid135,:grid136,:grid137,:grid141,:grid142,:grid143,:grid144,:grid145,:grid146,:grid147,:grid151,:grid152,:grid153,:grid154,:grid155,:grid156,:grid157,:grid161,:grid162,:grid163,:grid164,:grid165,:grid166,:grid167,:grid171,:grid172,:grid173,:grid174,:grid175,:grid176,:grid177,:grid181,:grid182,:grid183,:grid184,:grid185,:grid186,:grid187,:grid191,:grid192,:grid193,:grid194,:grid195,:grid196,:grid197,:grid201,:grid202,:grid203,:grid204,:grid205,:grid206,:grid207,:grid211,:grid212,:grid213,:grid214,:grid215,:grid216,:grid217,:grid221,:grid222,:grid223,:grid224,:grid225,:grid226,:grid227,:grid231,:grid232,:grid233,:grid234,:grid235,:grid236,:grid237,:grid241,:grid242,:grid243,:grid244,:grid245,:grid246,:grid247,:grid251,:grid252,:grid253,:grid254,:grid255,:grid256,:grid257,:grid261,:grid262,:grid263,:grid264,:grid265,:grid266,:grid267,:grid271,:grid272,:grid273,:grid274,:grid275,:grid276,:grid277,:grid281,:grid282,:grid283,:grid284,:grid285,:grid286,:grid287,:grid291,:grid292,:grid293,:grid294,:grid295,:grid296,:grid297,:grid301,:grid302,:grid303,:grid304,:grid305,:grid306,:grid307)
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
      params.require(:approval).permit(:userchange, :week, :grid11, :grid12, :grid13, :grid14, :grid15, :grid16, :grid17, :grid21, :grid22, :grid23, :grid24, :grid25, :grid26, :grid27, :grid31, :grid32, :grid33, :grid34, :grid35, :grid36, :grid37, :grid41, :grid42, :grid43, :grid44, :grid45, :grid46, :grid47, :grid51, :grid52, :grid53, :grid54, :grid55, :grid56, :grid57, :grid61, :grid62, :grid63, :grid64, :grid65, :grid66, :grid67, :grid71, :grid72, :grid73, :grid74, :grid75, :grid76, :grid77, :grid81, :grid82, :grid83, :grid84, :grid85, :grid86, :grid87, :grid91, :grid92, :grid93, :grid94, :grid95, :grid96, :grid97, :grid101, :grid102, :grid103, :grid104, :grid105, :grid106, :grid107, :grid111, :grid112, :grid113, :grid114, :grid115, :grid116, :grid117, :rotumid,:grid121,:grid122,:grid123,:grid124,:grid125,:grid126,:grid127,:grid131,:grid132,:grid133,:grid134,:grid135,:grid136,:grid137,:grid141,:grid142,:grid143,:grid144,:grid145,:grid146,:grid147,:grid151,:grid152,:grid153,:grid154,:grid155,:grid156,:grid157,:grid161,:grid162,:grid163,:grid164,:grid165,:grid166,:grid167,:grid171,:grid172,:grid173,:grid174,:grid175,:grid176,:grid177,:grid181,:grid182,:grid183,:grid184,:grid185,:grid186,:grid187,:grid191,:grid192,:grid193,:grid194,:grid195,:grid196,:grid197,:grid201,:grid202,:grid203,:grid204,:grid205,:grid206,:grid207,:grid211,:grid212,:grid213,:grid214,:grid215,:grid216,:grid217,:grid221,:grid222,:grid223,:grid224,:grid225,:grid226,:grid227,:grid231,:grid232,:grid233,:grid234,:grid235,:grid236,:grid237,:grid241,:grid242,:grid243,:grid244,:grid245,:grid246,:grid247,:grid251,:grid252,:grid253,:grid254,:grid255,:grid256,:grid257,:grid261,:grid262,:grid263,:grid264,:grid265,:grid266,:grid267,:grid271,:grid272,:grid273,:grid274,:grid275,:grid276,:grid277,:grid281,:grid282,:grid283,:grid284,:grid285,:grid286,:grid287,:grid291,:grid292,:grid293,:grid294,:grid295,:grid296,:grid297,:grid301,:grid302,:grid303,:grid304,:grid305,:grid306,:grid307)
    end

    def push_params
      params.require(:approval).permit(:grid11, :grid12, :grid13, :grid14, :grid15, :grid16, :grid17, :grid21, :grid22, :grid23, :grid24, :grid25, :grid26, :grid27, :grid31, :grid32, :grid33, :grid34, :grid35, :grid36, :grid37, :grid41, :grid42, :grid43, :grid44, :grid45, :grid46, :grid47, :grid51, :grid52, :grid53, :grid54, :grid55, :grid56, :grid57, :grid61, :grid62, :grid63, :grid64, :grid65, :grid66, :grid67, :grid71, :grid72, :grid73, :grid74, :grid75, :grid76, :grid77, :grid81, :grid82, :grid83, :grid84, :grid85, :grid86, :grid87, :grid91, :grid92, :grid93, :grid94, :grid95, :grid96, :grid97, :grid101, :grid102, :grid103, :grid104, :grid105, :grid106, :grid107, :grid111, :grid112, :grid113, :grid114, :grid115, :grid116, :grid117,:grid121,:grid122,:grid123,:grid124,:grid125,:grid126,:grid127,:grid131,:grid132,:grid133,:grid134,:grid135,:grid136,:grid137,:grid141,:grid142,:grid143,:grid144,:grid145,:grid146,:grid147,:grid151,:grid152,:grid153,:grid154,:grid155,:grid156,:grid157,:grid161,:grid162,:grid163,:grid164,:grid165,:grid166,:grid167,:grid171,:grid172,:grid173,:grid174,:grid175,:grid176,:grid177,:grid181,:grid182,:grid183,:grid184,:grid185,:grid186,:grid187,:grid191,:grid192,:grid193,:grid194,:grid195,:grid196,:grid197,:grid201,:grid202,:grid203,:grid204,:grid205,:grid206,:grid207,:grid211,:grid212,:grid213,:grid214,:grid215,:grid216,:grid217,:grid221,:grid222,:grid223,:grid224,:grid225,:grid226,:grid227,:grid231,:grid232,:grid233,:grid234,:grid235,:grid236,:grid237,:grid241,:grid242,:grid243,:grid244,:grid245,:grid246,:grid247,:grid251,:grid252,:grid253,:grid254,:grid255,:grid256,:grid257,:grid261,:grid262,:grid263,:grid264,:grid265,:grid266,:grid267,:grid271,:grid272,:grid273,:grid274,:grid275,:grid276,:grid277,:grid281,:grid282,:grid283,:grid284,:grid285,:grid286,:grid287,:grid291,:grid292,:grid293,:grid294,:grid295,:grid296,:grid297,:grid301,:grid302,:grid303,:grid304,:grid305,:grid306,:grid307)
    end

    def rotum_params
      params.require(:rotum).permit(:week, :grid11, :grid12, :grid13, :grid14, :grid15, :grid16, :grid17, :grid21, :grid22, :grid23, :grid24, :grid25, :grid26, :grid27, :grid31, :grid32, :grid33, :grid34, :grid35, :grid36, :grid37, :grid41, :grid42, :grid43, :grid44, :grid45, :grid46, :grid47, :grid51, :grid52, :grid53, :grid54, :grid55, :grid56, :grid57, :grid61, :grid62, :grid63, :grid64, :grid65, :grid66, :grid67, :grid71, :grid72, :grid73, :grid74, :grid75, :grid76, :grid77, :grid81, :grid82, :grid83, :grid84, :grid85, :grid86, :grid87, :grid91, :grid92, :grid93, :grid94, :grid95, :grid96, :grid97, :grid101, :grid102, :grid103, :grid104, :grid105, :grid106, :grid107, :grid111, :grid112, :grid113, :grid114, :grid115, :grid116, :grid117,:grid121,:grid122,:grid123,:grid124,:grid125,:grid126,:grid127,:grid131,:grid132,:grid133,:grid134,:grid135,:grid136,:grid137,:grid141,:grid142,:grid143,:grid144,:grid145,:grid146,:grid147,:grid151,:grid152,:grid153,:grid154,:grid155,:grid156,:grid157,:grid161,:grid162,:grid163,:grid164,:grid165,:grid166,:grid167,:grid171,:grid172,:grid173,:grid174,:grid175,:grid176,:grid177,:grid181,:grid182,:grid183,:grid184,:grid185,:grid186,:grid187,:grid191,:grid192,:grid193,:grid194,:grid195,:grid196,:grid197,:grid201,:grid202,:grid203,:grid204,:grid205,:grid206,:grid207,:grid211,:grid212,:grid213,:grid214,:grid215,:grid216,:grid217,:grid221,:grid222,:grid223,:grid224,:grid225,:grid226,:grid227,:grid231,:grid232,:grid233,:grid234,:grid235,:grid236,:grid237,:grid241,:grid242,:grid243,:grid244,:grid245,:grid246,:grid247,:grid251,:grid252,:grid253,:grid254,:grid255,:grid256,:grid257,:grid261,:grid262,:grid263,:grid264,:grid265,:grid266,:grid267,:grid271,:grid272,:grid273,:grid274,:grid275,:grid276,:grid277,:grid281,:grid282,:grid283,:grid284,:grid285,:grid286,:grid287,:grid291,:grid292,:grid293,:grid294,:grid295,:grid296,:grid297,:grid301,:grid302,:grid303,:grid304,:grid305,:grid306,:grid307)
    end
end
