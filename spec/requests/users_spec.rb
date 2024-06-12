require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users' do
    it 'returns users index' do
      get '/users'
      expect(response.body).to include('Users')
    end
  end

  describe 'GET /users/new' do
    it 'returns new user form' do
      get '/users/new'
      expect(response.body).to include('New User')
    end
  end

  describe 'POST /users' do
    it 'creates a new user' do
      sector = create(:sector)
      post '/users', params: { user: { sector_ids: [sector.id], name: 'John Doe', agree_to_terms: true } }
      expect(response).to redirect_to(User.last)
    end

    context 'when user is invalid' do
      it 'does not create a new user' do
        post '/users', params: { user: { name: 'John Doe' } }
        expect(response.body).to include('New User')
      end
    end

    context 'when multiple sectors' do
      it 'creates a new user' do
        sector1 = create(:sector)
        sector2 = create(:sector)
        post '/users',
             params: { user: { sector_ids: [sector1.id, sector2.id], name: 'John Doe', agree_to_terms: true } }
        expect(response).to redirect_to(User.last)
      end
    end
  end
end
