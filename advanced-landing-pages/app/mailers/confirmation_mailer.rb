class ConfirmationMailer < ApplicationMailer

  def confirmation(email)
    @user = User.find_by(email: email)
    mail(to: email, subject: "Confirmation de l'inscription à la newsletter THP")
  end

end
