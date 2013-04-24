module Activities
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def activities
        around_filter :activities
      end
    end
    protected
	    def activities
	    	puts "zfsdfsd"
	    end
end