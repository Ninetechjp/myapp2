class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def home
  end

  def index

  end
  def about
  end
  
  def help
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "ようこそ！"
      redirect_to @user
    else
      render 'new'
    end


  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
