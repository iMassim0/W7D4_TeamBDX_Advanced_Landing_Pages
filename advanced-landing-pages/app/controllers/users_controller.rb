class UsersController < ApplicationController

  def create
    @user = User.new(params_user)
    @user.confirmation_hash = rand(36**36).to_s(36)
      if @user.save
        if ConfirmationMailer.confirmation(@user.email).deliver_now
          flash.now[:notice] = "Merci de confirmer votre inscription dans l'email qui vous a été envoyé à l'adresse #{@user.email}."
          redirect_to root_path
        else
          flash.now[:notice] = "Utilisateur bien enregistré. Un email de confirmation vous sera envoyé ultérieurementà l'adresse #{@user.email}."
          redirect_to root_path
        end
      else
        flash.now[:error] = "Merci de renseigner tous les champs."
        redirect_to root_path
      end
  end

  def confirmation
    if @user = User.find_by(confirmation_hash: params[:hash])
      if @user.update(confirmation_hash: rand(36**36).to_s(36), confirm: true, subscribe: true)
        flash.now[:notice] = "Adresse email et souscription confirmées. :)"
        redirect_to root_path
      end
    else
      flash.now[:error] = "Lien de confirmation erroné. :("
      redirect_to root_path
    end
  end

  def unsubscribe
    if @user = User.find_by(confirmation_hash: params[:hash]) && @user.confirm
      if @user.update(confirmation_hash: nil, subscribe: false)
        flash.now[:notice] = "Desinscription à la newsletter enregistrée. :'('"
        redirect_to root_path
      end
    else
      flash.now[:error] = "Lien de confirmation erroné. :("
      redirect_to root_path
    end
  end

  def newsletter
    Newsletter.new.perform
  end

  private

  def params_user
    params.require(:user).permit(:firstname, :lastname, :email)
  end

end
