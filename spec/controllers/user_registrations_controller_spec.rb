require 'spec_helper'

describe UserRegistrationsController do
  before :each do
    request.env['devise.mapping'] = Devise.mappings[:user]
  end

  it 'creates a default wallet for every new user' do
    post 'create',  user: { password: 'password', email: 'email@example.com' }

    User.last.tap do |user|
      user.wallet.should be
    end
  end
end
