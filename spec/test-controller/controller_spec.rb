require 'spec_helper'
require 'db/active_record'
require 'fixtures/application'
require 'fixtures/controllers'
require 'fixtures/models'
require 'rspec/rails'

describe PostsController, type: :controller do

  describe '#create' do

    it 'has @post' do
      post :create

      should change(Post,:count).by(1)
    end

  end

end