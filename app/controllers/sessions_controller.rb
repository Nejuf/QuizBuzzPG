class SessionsController < ApplicationController

  def sign_in
    email = params[:email]
    password = params[:password]

    user = User.where(email: email).first

    if user.nil?
      flash[:errors] = ["No user found with email: #{email}"]
      respond_to do |f|
        f.html { redirect_to root_url }
        f.json { render json: {errors: ["No user found with email: #{email}"], status: 404} }
      end
    elsif user.is_password?(password)
      sess = Session.sign_in(user.id)
      session[:session_token] = sess.token
      respond_to do |f|
        f.html { redirect_to root_url }
        f.json { render user}
      end
    else
      flash[:errors] = ["Password does not match."]
      respond_to do |f|
        f.html { redirect_to root_url }
        f.json { render json: {errors: ["Password does not match."], status: 404} }
      end
    end
  end

  def sign_out
    session[:session_token] = nil

    flash[:notices] = ["Successfully signed out."]
    respond_to do |f|
      f.html { redirect_to root_url }
      f.json { render status: :ok}
    end
  end
end
