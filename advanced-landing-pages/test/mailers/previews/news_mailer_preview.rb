# Preview all emails at http://localhost:3000/rails/mailers/news_mailer
class NewsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/news_mailer/newsletter
  def newsletter
    NewsMailer.newsletter
  end

end
