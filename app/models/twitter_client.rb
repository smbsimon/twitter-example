class TwitterClient
  attr_reader :client

  def initialize(client = TWITTER)
    @client = client
  end

  def fetch_tweets(twitter_handle)
    client.user_timeline(twitter_handle)
  end

  def self.fetch_tweets(twitter_handle)
    TWITTER.user_timeline(twitter_handle)
  end
end
