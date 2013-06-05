class Fund < ActiveRecord::Base
  belongs_to :wallet
  delegate :user, to: :wallet

  attr_accessible :fund_type

  BITCOINS = 'bitcoins'
  FUND_TYPES = [BITCOINS]

  scope :bitcoins, -> { where(fund_type: Fund::BITCOINS) }

  def available
    balance - user.offers.where(fund_type: fund_type).sum(&:amount)
  end
end
