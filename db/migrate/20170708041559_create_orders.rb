class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.decimal :total_price
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
