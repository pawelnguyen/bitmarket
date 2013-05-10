class RemoveUselessColumnsFromFunds < ActiveRecord::Migration
  def up
    remove_column :funds, :description
    remove_column :funds, :type

    add_column :funds, :fund_type, :string, null: false
    add_column :funds, :wallet_id, :integer, null: false
  end

  def down
    add_column :funds, :type, :string
    add_column :funds, :description, :string

    remove_column :funds, :fund_type
    remove_column :funds, :wallet_id

  end
end
