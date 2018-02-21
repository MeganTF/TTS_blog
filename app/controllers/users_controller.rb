class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    username = params[:user][:username]
    password = params[:user][:password_digest]

    new_user =  User.new(username: username, password: password)
    new_user.save
    session[:user_id] = new_user.id

    redirect_to user_path new_user

  end
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end
  def edit
    @user = User.find(params[:id])
  end
  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end
  def update
    @user = User.find(params[:id])
    new_username = params[:user][:username]
    new_password = params[:user][:password]

    user.username = new_username
    user.password = new_password
    user.save
    redirect_to user_path
  end
end
