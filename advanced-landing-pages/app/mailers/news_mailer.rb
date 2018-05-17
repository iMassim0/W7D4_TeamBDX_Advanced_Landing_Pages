class NewsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.news_mailer.newsletter.subject
  #
  def newsletter(news_number)
    mail(to: @user.mail, subject: "The Hacking Project Newsletter n°#{news_number} - #{Time.now.strftime('%e %B').downcase}")
  end
end
