class Newsletter

  def send_letter(num)
    User.where(subscribe: true).each do |user|
      NewsMailer.send_news(user, num).deliver_now
    end
  end

  def perform
    send_letter(3)
  end

end
