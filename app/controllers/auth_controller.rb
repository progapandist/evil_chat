class AuthController < ApplicationController
  before_action :only_for_anonymous # check if we know the user

  def new; end

  # Get username from params, save to session and redirect to chat window
  def create
    session[:username] = params[:username]
    redirect_to root_path
  end

  private

  # If a user had been to our chat before — send them straight to chat window
  def only_for_anonymous
    redirect_to root_path if session[:username]
  end
end
