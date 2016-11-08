class Admin::UsersController < Admin::ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'User added.'
      redirect_to admin_users_path
    else
      render 'new'
    end
  end

  def edit
  end

  def delete
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password_hash, :password_salt)
  end
end
