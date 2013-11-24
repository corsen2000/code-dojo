class UsersController < ApplicationController
  def index
    @users = User.all.order points: :desc
  end

  def show
    @user = User.find(params[:id]) 
  end
end