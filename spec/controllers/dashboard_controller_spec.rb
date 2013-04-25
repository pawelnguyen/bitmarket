require 'spec_helper'

describe DashboardController do
  let(:user) { Fabricate(:user) }

  context 'when user is not logged in' do

    it 'user has access to his wallet' do
      get 'index'

      response.should be_redirect
    end
  end



  context 'when user is logged in' do
    before do
      sign_in user
    end

    it 'user has access to his wallet' do
      get 'index'

      response.should be_success
    end
  end
end
