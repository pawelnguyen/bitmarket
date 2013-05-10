class Fund < ActiveRecord::Base
  attr_accessible :fund_type

  BITCOINS = 'bitcoins'

  scope :bitcoins, -> { where(fund_type: Fund::BITCOINS) }
end
