require 'spec_helper'
require 'fixtures/application'
require 'fixtures/controllers'
require 'fixtures/models'
require 'rspec/rails'

describe PostsController, type: :controller do
  before do
    @post = Post.new 1
    @post_params = { title: "Title" }
    PostsController.any_instance.stub(:post_params).and_return(@post_params)
  end

  describe '#create' do
    def create
      post :create, { id: @post.id, post: @post_params, format: :json }
    end

    before do
      Post.stub(:new).and_return(@post)
      @post.stub(:save).and_return(true)
    end

    it 'has @post' do
      create

      assigns(:post).should eq(@post)
    end

    it 'builds @post' do
      Post.should_receive(:new).with(@post_params).and_return(@post)

      create
    end

    it 'saves @post' do
      @post.should_receive(:save).once

      create
    end
  end

end