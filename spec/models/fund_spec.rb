require 'spec_helper'

describe Fund do
  it 'responds to fund_type' do
    subject.should respond_to :fund_type
  end
end
