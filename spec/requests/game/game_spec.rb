# frozen_string_literal: true

require 'rails_helper'
require 'rspec_api_doc_helper'

resource 'Game' do
  before do
    @game = create(:game)
  end

  get '/games/:id' do
    let(:id) { @game.id }
    example 'Get game' do
      do_request

      expect(json_response['player_1']).to eq 'john'
      expect(response_status).to eq 200
    end
  end

  post '/games' do
    let(:nickname) { 'David' }

    with_options scope: :game, required: true do
      parameter :nickname, 'User nickname'
    end

    example 'Create game' do
      do_request

      expect(json_response['errors']).to be_nil
      expect(json_response['player_1']).to eq 'David'
      expect(response_status).to eq 200
    end
  end

  put '/games/:id' do
    let(:id) { @game.id }
    let(:field_1) { 'X' }

    with_options scope: :game, required: true do
      parameter :field_1, 'Field'
      parameter :field_2, 'Field'
      parameter :field_3, 'Field'
      parameter :field_4, 'Field'
      parameter :field_5, 'Field'
      parameter :field_6, 'Field'
      parameter :field_7, 'Field'
      parameter :field_8, 'Field'
      parameter :field_9, 'Field'
    end

    example 'Create a move' do
      do_request

      expect(json_response['errors']).to be_nil
      expect(json_response['field_1']).to eq 'X'
      expect(response_status).to eq 200
    end
  end

  put '/games/:id' do
    let(:id) { @game.id }
    let(:field_1) { 'X' }
    let(:field_2) { 'X' }
    let(:field_3) { 'X' }
    let(:field_4) { 'O' }
    let(:field_5) { 'O' }
    let(:field_6) { 'X' }
    let(:field_7) { 'O' }
    let(:field_8) { 'X' }
    let(:field_9) { 'O' }

    with_options scope: :game, required: true do
      parameter :field_1, 'Field'
      parameter :field_2, 'Field'
      parameter :field_3, 'Field'
      parameter :field_4, 'Field'
      parameter :field_5, 'Field'
      parameter :field_6, 'Field'
      parameter :field_7, 'Field'
      parameter :field_8, 'Field'
      parameter :field_9, 'Field'
    end

    example 'Player 1 wins', document: false do
      do_request

      expect(json_response['errors']).to be_nil
      expect(json_response['message']).to eq 'Player 1 WIN'
      expect(response_status).to eq 200
    end
  end

  put '/games/:id' do
    let(:id) { @game.id }
    let(:field_1) { 'O' }
    let(:field_2) { 'O' }
    let(:field_3) { 'O' }
    let(:field_4) { 'X' }
    let(:field_5) { 'O' }
    let(:field_6) { 'X' }
    let(:field_7) { 'O' }
    let(:field_8) { 'X' }
    let(:field_9) { 'O' }

    with_options scope: :game, required: true do
      parameter :field_1, 'Field'
      parameter :field_2, 'Field'
      parameter :field_3, 'Field'
      parameter :field_4, 'Field'
      parameter :field_5, 'Field'
      parameter :field_6, 'Field'
      parameter :field_7, 'Field'
      parameter :field_8, 'Field'
      parameter :field_9, 'Field'
    end

    example 'Player 2 wins', document: false do
      do_request

      expect(json_response['errors']).to be_nil
      expect(json_response['message']).to eq 'Player 2 WIN'
      expect(response_status).to eq 200
    end
  end

  put '/games/:id' do
    let(:id) { @game.id }
    let(:field_1) { 'X' }
    let(:field_2) { 'O' }
    let(:field_3) { 'X' }
    let(:field_4) { 'X' }
    let(:field_5) { 'O' }
    let(:field_6) { 'X' }
    let(:field_7) { 'O' }
    let(:field_8) { 'X' }
    let(:field_9) { 'O' }

    with_options scope: :game, required: true do
      parameter :field_1, 'Field'
      parameter :field_2, 'Field'
      parameter :field_3, 'Field'
      parameter :field_4, 'Field'
      parameter :field_5, 'Field'
      parameter :field_6, 'Field'
      parameter :field_7, 'Field'
      parameter :field_8, 'Field'
      parameter :field_9, 'Field'
    end

    example 'Tie game', document: false do
      do_request

      expect(json_response['errors']).to be_nil
      expect(json_response['message']).to eq 'It is TIE!'
      expect(response_status).to eq 200
    end
  end

  put '/games/:id/end' do
    let(:id) { @game.id }

    example 'End game' do
      do_request

      expect(json_response['errors']).to be_nil
      json_response['end_game']
      expect(response_status).to eq 200
    end
  end
end
