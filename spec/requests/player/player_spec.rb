# frozen_string_literal: true

require 'rails_helper'
require 'rspec_api_doc_helper'

resource 'Player' do
  before do
    @player = create(:player)
  end

  get '/players/:id' do
    let(:id) { @player.id }

    example 'Get player' do
      do_request

      expect(json_response['errors']).to be_nil
      expect(json_response['nickname']).to eq 'john'
      expect(response_status).to eq 200
    end
  end

  post '/players' do
    let(:nickname) { 'David' }

    with_options scope: :player, required: true do
      parameter :nickname, 'Player nickname'
    end

    example 'Create player' do
      do_request

      expect(json_response['errors']).to be_nil
      expect(json_response['nickname']).to eq 'David'
      expect(response_status).to eq 200
    end
  end

  post '/players' do
    let(:nickname) { '' }

    with_options scope: :player do
      parameter :nickname, 'Player nickname'
    end

    example 'Create player', document: false do
      do_request

      expect(json_response['nickname']).to eq ["can't be blank"]
      expect(response_status).to eq 200
    end
  end
end
