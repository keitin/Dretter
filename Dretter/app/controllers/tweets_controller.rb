class TweetsController < ApplicationController
  def index
    @tweets = current_user.active_group.tweets.order('created_at DESC')
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    @tweets = current_user.active_group.tweets.order('created_at DESC')
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text, :image_url).merge(user_id: current_user.id, group_id: current_user.active_group_id)
  end
end
