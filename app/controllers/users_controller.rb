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
      flash[:notices] = ["User for #{@user.email} successfully created."]
      respond_to do |format|
        format.html {redirect_to '/'}
        format.json {render json: @user}
      end
    else
      flash[:errors] = @user.errors.messages
      respond_to do |format|
        format.html {redirect_to '/'}
        format.json {render json: @user, status: 404}
      end
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(params)
      flash[:notices] = ["User for #{@user.email} successfully updated."]
      respond_to do |format|
        format.json {render json: @user}
      end
    else
      flash[:errors] = @user.errors.messages
      respond_to do |format|
        format.json {render json: @user, status: 404}
      end
    end
  end
end
