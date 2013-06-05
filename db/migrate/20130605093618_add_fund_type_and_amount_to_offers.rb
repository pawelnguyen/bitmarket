class AddFundTypeAndAmountToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :fund_type, :string, null: false
    add_column :offers, :amount, :decimal, precision: 8, scale: 2, default: 0
  end
end
