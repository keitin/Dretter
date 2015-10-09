class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order('created_at DESC')
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    @tweets = Tweet.order('created_at DESC')
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text, :image_url).merge(user_id: current_user.id)
  end
end
