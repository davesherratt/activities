module Activities
    def self.included(base)
      base.around_filter :activities
    end

    protected
	    def activities(*filters, &block)
    		extend ActiveSupport::Concern
	   		#a = Activity.new( :action => params[:action], :controller => params[:controller], :params => params )
	   		#a.save
	    	yield
	    	#puts Thread.current.to_yaml
	    	#puts params
	    	#puts params[:controller]
	    	#puts params[:controller].classify.downcase
	    	#puts params[:controller].classify.constantize
	    	#puts params[:action]
	    	puts params
	    	unless params[:id].nil?
	    	puts params
		    	model = params[:controller].classify.constantize.where(:id => params[:id]).first
		    	puts model.to_yaml
		    	#puts model
		    	puts model.changed
		    end
	    	#filters.each do |filter|
	    	#	puts filter
	    	#end
	    	#puts filters.to_yaml
	    	#puts params
	   		#puts "sdfsdfsd"
	    end
end