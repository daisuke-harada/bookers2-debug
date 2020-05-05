class FollowersController < ApplicationController
  def index
    @user = User.find(user_params)
    @followers = @user.followers
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
