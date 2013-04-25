class Wallet < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :user
  has_many :funds, dependent: :destroy
end
