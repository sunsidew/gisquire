class AccessController < ApplicationController
  def index
  	#if session[:user_id]
  	if current_user
		if Whitelist.exists?(domain: current_user.email.match(/@.*/).to_s)
			redirect_to('/issue')
		else
			redirect_to('/not_allow')
		end
	end
  end

  def not_allow
  end
end
