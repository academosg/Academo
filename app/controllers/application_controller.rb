class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # TODO: Raise cancan exception if not authorized:
#   check_authorization :unless => :devise_controller?

	# overriding bigbluebutton_rails function
	def bigbluebutton_user
	  current_user && current_user.is_a?(User) ? current_user : nil
	end

	def bigbluebutton_role(room)
	  ...
	end

end
