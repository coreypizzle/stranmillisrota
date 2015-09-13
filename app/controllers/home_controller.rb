class HomeController < ApplicationController
    before_filter :authenticate_user!
    before_action :set_users
    before_filter except: [:index] do
      redirect_to :root unless current_user.approved?
    end
  
  def index
  end

  def setup
  end

  private

    def set_users
      @users = User.all
    end
end
