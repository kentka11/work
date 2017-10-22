class SessionsController < ApplicationController
  def new
  end

  def create 
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      log_in user # sessions_helper.rbにて定義
      paprams[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to user
  	else
  		flash[:danger] = 'Invalid email/passowrd combination'
      render 'new'
  	end
  end

  def destroy
    # ログイン中の場合のみログアウトする
    log_out if logged_in?
    redirect_to root_url
  end

end
