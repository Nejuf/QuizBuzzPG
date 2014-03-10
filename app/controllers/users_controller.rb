class UsersController < ApplicationController

  def index
    @users = User.all

    respond_to do |format|
      format.json {render json: @users}
    end
  end

  def show
    @user = User.find(params[:id])

    render json: @user
  end
end
