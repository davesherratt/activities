require 'activities'
class TestController < ActionController::Base
  include Rails.application.routes.url_helpers
  def render(*attributes)
  end
end

class PostsController < TestController
  #activities
  around_filter :activities
  def create
  	p = Post.new(:title => 'Test Title', :content => 'Test Content')
  	puts p.to_yaml
  	p.save
    render nothing: true
  end
end