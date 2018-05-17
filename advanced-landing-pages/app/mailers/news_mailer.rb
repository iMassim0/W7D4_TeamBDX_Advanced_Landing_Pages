class NewsMailer < ApplicationMailer

  def send_news(user, news_number)
    p @user = user
    p @news_number = news_number
    mail(to: user.email, subject: "The Hacking Project Newsletter n°#{news_number} - #{Time.now.strftime('%e %B').downcase}")
  end

end
