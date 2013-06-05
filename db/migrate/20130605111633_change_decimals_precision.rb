class ChangeDecimalsPrecision < ActiveRecord::Migration
  def up
    change_column :funds, :balance, :decimal, precision: 18, scale: 8, default: 0
    change_column :offers, :amount, :decimal, precision: 18, scale: 8, default: 0
  end

  def down
    change_column :funds, :balance, :decimal, precision: 8, scale: 2, default: 0
    change_column :offers, :amount, :decimal, precision: 8, scale: 2, default: 0
  end
end
