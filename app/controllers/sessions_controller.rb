class SessionsController < ApplicationController
  def new
  	@title = 'Sign in'
  end
  def create
  	byebug
  	user = User.authenticate(params[:session][:email], params[:session][:password])
  	if user.nil>
  		flash.now[:error] = "invalid email/password combination."

  	end
  end
  def destroy
  end
end
