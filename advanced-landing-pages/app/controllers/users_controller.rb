class UsersController < ApplicationController

  def create
    @user = User.new(params_user, confirmation_hash: rand(36**length).to_s(36))
      if @user.save
        if ConfirmationMailer.confirmation.(@user.email).deliver_now
          flash.now[:notice] = "Merci de confirmer votre inscription dans l'email qui vous a été envoyé à l'adresse #{@user.email}."
          redirect_to root_path
        else
          flash.now[:notice] = "Utilisateur bien enregistré. Un email de confirmation vous sera envoyé ultérieurementà l'adresse #{@user.email}."
          redirect_to root_path
        end
      else
        flash.now[:error] = @user.errors.full_messages || "Merci de renseigner tous les champs."
        render
      end
  end

  def confirmation
    if @user = User.find_by(confirmation_hash: params[:hash])
      if @user.update(confirmation_hash: rand(36**length).to_s(36), confirm: true, subscribe: true)
        flash.now[:success] = "Adresse email et souscription confirmées. :)"
        redirect_to root_path
      end
    else
      flash.now[:error] = "Lien de confirmation erroné. :("
      redirect_to root_path
    end
  end

  private

  def params_user
    params.require(:user).permit(:firstname, :lastname, :email)
  end

end
