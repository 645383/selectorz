class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @sectors = Sector.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      @sectors = Sector.all
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    @sectors = Sector.all
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      @sectors = Sector.all
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :agree_to_terms, sector_ids: [])
  end
end
