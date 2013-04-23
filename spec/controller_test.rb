require 'db/active_record'
require 'models/active_models'
require 'fixtures/application'
require 'controllers/active_controllers'
require 'spec_helper'
require 'rspec/rails'
require 'activities'

describe PostsController, type: :controller do
	describe '#index' do
		get :index
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