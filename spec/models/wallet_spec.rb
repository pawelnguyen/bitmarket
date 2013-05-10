require 'spec_helper'

describe Wallet do
  it { should have(0).funds }

  let(:user) {Fabricate(:user)}

  it 'allows to transfer money from another wallet' do
    wallet = Fabricate(:wallet, user: user)

    wallet.bitcoins.should be_instance_of Fund
  end
end
