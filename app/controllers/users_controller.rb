class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #@post_image = @user.post_images
  end

  def index
  end

  def edit
  end
end
