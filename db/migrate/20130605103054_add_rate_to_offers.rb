class AddRateToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :rate, :decimal, precision: 18, scale: 8, default: 0
  end
end
