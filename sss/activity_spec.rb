require 'spec_helper'
require 'activities'
require 'rails'
require 'action_controller/railtie'
require 'rspec/rails'
require 'db/active_record'
require 'controllers/active_controllers'
require 'models/active_models'

describe :track_activies do
	describe "foobar" do
		it "prints foobar" do
			puts "foobar"
		end
	end
end


describe :track_adding_activities do
    context "in a Rails controller", :type => :controller do
	    before(:each) do
			@request = ActionController::TestRequest.new
		    @controller = PostsController.new
		    @response   = ActionController::TestResponse.new
	    end

	    describe "index" do
	    	it "gets index" do
	    		get :index
	    	end
	    end

=begin
	    describe "creation" do
			it "records action of creation" do
	        	post :create
	        	should change(Activity,:count).by(1)
			end
	    end
=end
  	end
end