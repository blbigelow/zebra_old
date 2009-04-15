# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  include AuthenticatedSystem
  
  layout 'application'
  
  private
  
  def log_activity
    @action = Action.new
    @action.user_id = current_user.id
    @action.controller = controller_name
    @action.action = action_name
    if ( params[:id] != nil )
      @action.object_id = params[:id]
    end
    @action.session_id = session.session_id
    
    @action.save
  end
end
