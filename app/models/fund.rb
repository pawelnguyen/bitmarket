class Fund < ActiveRecord::Base
  attr_accessible :fund_type

  BITCOINS = 'bitcoins'
  FUND_TYPES = [BITCOINS]

  scope :bitcoins, -> { where(fund_type: Fund::BITCOINS) }
end
