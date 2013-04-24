class TestController < ActionController::Base
  include Activities
  include Rails.application.routes.url_helpers
  around_filter :activities
  def render(*attributes)
  end
end

class PostsController < TestController

  def create
  	p = Post.new(:title => 'Test Title', :content => 'Test Content')
  	p.save
    render nothing: true
  end

  def update
  	pp = Post.new(:title => 'Test Title', :content => 'Test Content')
  	pp.save
    p = Post.where(:title => 'Test Title').first
    puts p.to_yaml
    unless p.nil?
	    p.title = 'asdasd'
	    p.save
	end
    render nothing: true
  end

end