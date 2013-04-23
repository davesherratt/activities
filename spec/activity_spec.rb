require 'spec_helper'
require 'db/active_record'
require 'models/active_models'

describe :track_activies do
	describe "foobar" do
		it "prints foobar" do
			puts "foobar"
		end
	end

	describe "creation" do
		it "records action of creation" do
			post = Post.new(:title => "Test", :content => "Test")
			lambda{post.save}.should change(Activity,:count).by(1)
		end
	end
end