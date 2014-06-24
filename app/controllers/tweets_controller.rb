class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
  end

  def search
    # Queue up a job!
    Resque.enqueue(FetchUserTweets, params[:username])
    render status: 200, json: {}
  end
end
