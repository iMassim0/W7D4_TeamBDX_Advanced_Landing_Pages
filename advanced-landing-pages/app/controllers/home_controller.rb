class HomeController < ApplicationController
  def index
  end

  def lp1
    @user = User.new
  end

  def lp2
    @user = User.new
  end

  def lp3
    @user = User.new
  end

  def twitter
    BotTwitter.new.perform
  end

  def services
  end

end
