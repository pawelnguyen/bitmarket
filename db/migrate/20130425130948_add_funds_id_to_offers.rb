class AddFundsIdToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :fund_id, :integer, null: false
  end
end
