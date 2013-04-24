require 'activities'
class TestController < ActionController::Base
  around_filter :activities
  include Rails.application.routes.url_helpers
  def render(*attributes)
  end
end

class PostsController < TestController
  #activities
  def create
  	p = Post.new(:title => 'Test Title', :content => 'Test Content')
  	puts p.to_yaml
  	p.save
    render nothing: true
  end
end