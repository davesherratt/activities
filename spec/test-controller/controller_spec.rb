require 'spec_helper'
require 'db/active_record'
require 'fixtures/application'
require 'fixtures/controllers'
require 'fixtures/models'
require 'rspec/rails'

describe PostsController, type: :controller do

  describe '#create' do

    def create_post
      post :create, { :title => 'Test Title', :content => 'Test Content' }
    end

    def update_post
      post :update, { :title => 'Test Title', :content => 'Test Content', :id => 1 }
    end

    it 'should add a post' do
      lambda{create_post}.should change(Activity,:count).by(+1)
    end

    it 'should change a post' do
      lambda{update_post}.should change(Activity,:count).by(+1)
    end

  end

end