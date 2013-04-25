class Fund < ActiveRecord::Base
  attr_accessible :balance, :description, :type
end
