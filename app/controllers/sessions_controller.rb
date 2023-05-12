class SessionsController < ApplicationController

  def new
    redirect_to user_contacts_path(current_user) if user_signed_in?
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.autenticate(params[:session][:password])
      sign_in(user)
      redirect_to user_contacts_path(current_user)
    else
      flash.now[:danger] = 'Email ou senha invalidos'
      render 'new'
    end
  end

  def destroy
    sign_out
    flash[:warning] = 'Logout com sucesso'
    redirect_to entrar_url
  end

end                                                                                                                      
