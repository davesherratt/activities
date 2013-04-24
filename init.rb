require 'activities'
class ActionController::Base
	include ActionController::Activities
	logger.info "Activities enabled. Add around_filter :activities to ApplicationController."
end