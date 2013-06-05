class Offer < ActiveRecord::Base
  belongs_to :user

  attr_accessible :amount, :fund_type, :rate

  validates_presence_of :user
  validates :amount, numericality: {greater_than: 0}
  validates :rate, numericality: {greater_than: 0}
  validates :fund_type, inclusion: {in: Fund::FUND_TYPES}
end
