class TestController < ActionController::Base
  include Rails.application.routes.url_helpers

  def render(*attributes); end
end

class PostsController < TestController
  around_filter :activities

  def index
    render nothing: true
  end

  def create
  	post(:create, :post => { :title => 'Test Title', :content => 'Test Content' })
    assert_response :found
    render nothing: true
  end
end