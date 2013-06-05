class Offer < ActiveRecord::Base
  belongs_to :user

  attr_accessible :amount, :fund_type

  validates :amount, numericality: {greater_than: 0}
  validates :fund_type, presence: true
  validates :fund_type, inclusion: {in: Fund::FUND_TYPES}
end
