class FetchUserTweets
  @queue = :default

  def self.perform(twitter_username)
    tweets = TwitterClient.user_timeline twitter_username
    tweets.each do |tweet|
      json_tweet = JSON.generate(tweet.to_h)
      Pusher['test_channel'].trigger('my_event', {
        tweet: tweet.text
      })
      Tweet.create(content: JSON.generate(tweet.to_h))
    end
  end
end
