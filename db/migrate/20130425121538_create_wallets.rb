class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.references :user, null: false

      t.timestamps
    end
  end
end
