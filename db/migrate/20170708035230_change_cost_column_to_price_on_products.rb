class ChangeCostColumnToPriceOnProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :cost, :float
    add_column :products, :price, :decimal
  end
end
