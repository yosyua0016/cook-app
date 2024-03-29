class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def destroy
    sign_out(current_user)
    redirect_to root_path
  end
end
