class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
  # @user = User.new(email: params[:email],
  #                  password: params[:password],
  #                  password_confirmation: params[:password])
  end

  def new
    @user = User.new
  end
end
