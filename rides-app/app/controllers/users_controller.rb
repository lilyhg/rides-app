class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.name      = params[:user][:name]
    @user.email     = params[:user][:email]
    @user.password  = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = "You have successfully signed up as  #{@user.email}!"
      # Use _url in controllers
      # Use _path in views
      redirect_to root_url
    else
      render :new
    end
  end


end
