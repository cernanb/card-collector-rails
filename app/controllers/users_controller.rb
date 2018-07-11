class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  
  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  def index
  end

  def show
    @uc = UserCard.new
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
