class SessionsController < ApplicationController
  def login
  end


  def create
    user = User.find_by(email: session_params[:email].downcase)
    if user&.authenticate(session_params[:password])
      log_in user                                           #Sessions_helper 参照
      flash[:success] = "#{user.name}さん、こんにちは。"
      redirect_to user
    else
      flash.now[:danger] = 'EmailまたはPasswordがちがいます'
      render 'login'
    end
  end

  def logout
    log_out
    flash[:success] = "ログアウトしました。"
    redirect_to root_path
  end

  private

    def session_params
      params.require(:session).permit(:email, :password)
    end

end
