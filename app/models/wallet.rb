class Wallet < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :user
  has_many :funds, dependent: :destroy
  has_one :bitcoins, class_name: 'Fund', conditions: { fund_type: Fund::BITCOINS }

end
