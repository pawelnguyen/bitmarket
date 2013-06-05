class OfferBelongsToUser < ActiveRecord::Migration
  def up
    add_column :offers, :user_id, :integer, null: false
    remove_column :offers, :fund_id
  end

  def down
    remove_column :offers, :user_id
    add_column :offers, :fund_id, :integer, null: false
  end
end
