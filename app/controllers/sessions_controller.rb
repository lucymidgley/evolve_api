class SessionsController < ApplicationController
  def new
  end

  def index
  end

  def create
    if user = User.authenticate_with_credentials(params[:email], params[:password])

      my_id = BCrypt::Password.create(user.id.to_s)
      puts my_id
      
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      render json: my_id, status: :created, location: user
    else
    # If user's login doesn't work, send them back to the login form.
      render json: user.errors, status: :unprocessable_entity
    end
  end

  # def destroy
  #   session[:user_id] = nil
  #   redirect_to '/login'
  # end

end