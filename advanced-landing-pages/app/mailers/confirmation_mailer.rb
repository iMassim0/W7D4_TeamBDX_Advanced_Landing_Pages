class ConfirmationMailer < ApplicationMailer

  def confirmation
    mail(to: @user.email, subject: "Confirmation de l'inscription à la newsletter THP")
  end

end
