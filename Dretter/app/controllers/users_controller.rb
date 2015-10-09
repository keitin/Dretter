class UsersController < ApplicationController

  before_action :current_user_tweets, only: [:show, :edit]

  def show
  end

  def edit
    @tweets = @tweets.limit(5)
  end

  def update
    current_user.update(user_params)
    redirect_to user_path(current_user)
  end

  private
  def current_user_tweets
    @tweets = current_user.tweets.order("created_at DESC")
  end

  def user_params
    params.require(:user).permit(:name, :profile, :icon_image, :header_image)
  end
end
