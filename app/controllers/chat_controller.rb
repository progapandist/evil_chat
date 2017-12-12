class ChatController < ApplicationController
  before_action :authenticate!

  # dispay last 20 messages
  def show
    @messages = Message.order(created_at: :asc).last(20)
  end

  private

  # redirect user to /login if he hadn't picked a username yet
  def authenticate!
    redirect_to login_path unless session[:username]
  end
end
