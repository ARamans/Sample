class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to new_session_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def index
  	@users = User.all
  end

  def welcome
   @user = User.new
  end

end
