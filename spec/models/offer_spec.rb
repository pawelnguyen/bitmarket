require 'spec_helper'

describe Offer do
  let(:user) { Fabricate(:full_user) }
  context 'too few available bitcoins' do
    subject { Fabricate(:offer, amount: 2000, user: user) }

    xit 'should not be possible to create offer' do
      subject.should_not be_valid
      subject.errors.count.should eq 1
    end
  end
end
