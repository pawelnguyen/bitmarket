class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.decimal :balance, precision: 8, scale: 2, default: 0
      t.string :type
      t.string :description

      t.timestamps
    end
  end
end
