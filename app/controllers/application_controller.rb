class ApplicationController < ActionController::Base
  layout :choose_layout
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

def choose_layout
	controllers = ['home', 'inventory']
	if controllers.include? params[:controller] 
		"application"
	else
		"administrative"
	end
end
