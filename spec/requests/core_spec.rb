require 'rails_helper'

describe 'Core API' do
  shared_examples_for 'returns http success' do
    it { expect(response).to have_http_status(:success) }
  end

  context 'Create a new user without any information' do

    before do
      post "/api/v1/users"
    end

    it_should_behave_like 'returns http success'
  end
end
