class WelcomeController < ApplicationController
  def index

  	if user_signed_in?
  		#redirect_to posts_path
      redirect_to chat_messages_path

  	else
  		#redirect_to new_user_session_path
  	end
  end

  def login
  end

  def register
  end
  
end
