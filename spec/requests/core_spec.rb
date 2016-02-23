require 'rails_helper'

describe 'Core API' do
  shared_examples_for 'returns http success' do
    it { expect(response).to have_http_status(:success) }
  end

  describe 'POST #show' do
    context 'without any information' do
      before do
        post "/api/v1/users"
        @result = JSON.parse(response.body)
      end
      it_should_behave_like 'returns http success'
      it 'returns new user\'s information' do
        user = User.find_by(@result[:userid])
        expect(user).not_to be_falsey
      end
    end
  end
end
