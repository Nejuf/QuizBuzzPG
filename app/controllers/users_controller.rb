class UsersController < ApplicationController

  def index
    @users = User.all

    respond_to do |format|
      format.json {render json: @users}
    end
  end

  def show
    @user = User.find(params[:id])

     respond_to do |format|
      format.json {render json: @user}
    end
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      respond_to do |format|
        format.json {render json: @user}
      end
    else
      respond_to do |format|
        format.json {render json: @user, status: 404}
      end
    end
  end

  def update
    @user = User.find(params[:id])

    debugger
    if @user.update(params)
     respond_to do |format|
        format.json {render json: @user}
      end
    else
     respond_to do |format|
        format.json {render json: @user, status: 404}
      end
    end
  end
end
