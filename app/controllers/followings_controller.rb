class FollowingsController < ApplicationController
  def show
    @user = User.find(params[:id])
    @followings = @user.followings
  end
end
