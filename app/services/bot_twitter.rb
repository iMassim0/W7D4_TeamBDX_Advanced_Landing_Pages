class BotTwitter

  def log_in_twitter
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
      config.access_token        = ENV['TWITTER_TOKEN']
      config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
    end
  end

  def search_tweets
    @client.search("#formation #web -rt", lang: "fr").take(10).each do |tweet|
      Tweet.create(tweet_id: tweet.id, creator: tweet.user.screen_name, date: tweet.created_at)
    end
    p "Il y a #{Tweet.where(reply: false).size} tweets à traiter en base de données."
  end

  def send_tweets
    Tweet.where(reply: false).each do |tweet|
      if @client.update("@#{tweet.creator} Découvrez The Hacking Project @project_hacking, une formation développeur·euse web gratuite. Rendez-vous ici ! https://bdx-landingpages.herokuapp.com")
        tweet.update(reply: true)
        p "Tweet envoyé à #{tweet.creator}."
        sleep(10)
      end
    end
  end

  def perform
    log_in_twitter
    search_tweets
    send_tweets
  end

end
