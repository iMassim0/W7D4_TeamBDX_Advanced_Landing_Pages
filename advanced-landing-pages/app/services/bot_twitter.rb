class BotTwitter

  def initialize
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
      config.access_token        = ENV['TWITTER_TOKEN']
      config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
  end

  def search_tweets
    client.search("#formation #web -rt", lang: "fr").take(10).each do |tweet|
      Tweet.create(tweet_id: tweet.id, creator: tweet.user.screen_name, date: tweet.created_at)
    end
    p "Il y a #{Tweet.find_by(:reply? 0).size} tweets à traiter en base de données."
  end

  def send_tweets
    Tweet.find_by(:reply? 0).each do |tweet|
      client.update("@#{tweet.creator} Découvrez The Hacking Project, une formation développeur·euse web gratuite. Rendez-vous ici ! https://bdx-landingpages.herokuapp.com")
      tweet.reply? = true
      p "Tweet envoyé à #{tweet.creator}."
      sleep(60)
    end
  end

  def perform
    search_tweets
    send_tweets
  end

end
