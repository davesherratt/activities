module ActionController
	module Activities
	    def self.included(base)
	      base.around_filter :activities
	    end

	    protected
		    def activities
		    	puts "zfsdfsd"
		    end
	end
end