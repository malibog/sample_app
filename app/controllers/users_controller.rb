class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

def new
  @user = User.new
end

def create
  @user = User.new(params[:user])
  if @user.save
    redirect_to @user
  else
    render 'new' #show form with problems
  end

end
end
