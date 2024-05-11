# frozen_string_literal: true

require 'rails_helper'
require 'rspec_api_doc_helper'

resource 'User' do
  before do
    @user = create(:user)
  end

  get '/users/:id' do
    let(:id) { @user.id }

    example 'Get user' do
      do_request

      expect(json_response['errors']).to be_nil
      expect(json_response['nickname']).to eq 'john'
      expect(response_status).to eq 200
    end
  end

  post '/users' do
    let(:nickname) { 'David' }

    with_options scope: :user, required: true do
      parameter :nickname, 'User nickname'
    end

    example 'Create User' do
      do_request

      expect(json_response['errors']).to be_nil
      expect(json_response['nickname']).to eq 'David'
      expect(response_status).to eq 200
    end
  end

  post '/users' do
    let(:nickname) { '' }

    with_options scope: :user do
      parameter :nickname, 'User nickname'
    end

    example 'Create user', document: false do
      do_request

      expect(json_response['nickname']).to eq ["can't be blank"]
      expect(response_status).to eq 200
    end
  end
end
