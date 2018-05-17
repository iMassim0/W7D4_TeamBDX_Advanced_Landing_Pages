class HomeController < ApplicationController
  def index
  end

  def lp1
  end

  def lp2
  end

  def lp3
  end

  def twitter
    BotTwitter.new.perform
  end

  def services
  end

end
