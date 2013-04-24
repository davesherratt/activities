require 'activities'
class ActionController::Base
	include ActionController::Activities
	logger.info "Action profiling enabled. Add around_filter :action_profiler to ApplicationController then append ?profile=process_time to any URL to profile the page load and download a calltree file. Open it with kcachegrind."
end
