require 'spec_helper'

describe Fund do
  subject { Fabricate(:full_user).wallet.bitcoins }

  it 'responds to fund_type' do
    subject.should respond_to :fund_type
  end

  it 'available funds should be 80' do
    subject.available.to_f.should eq 80.to_f
  end
end
