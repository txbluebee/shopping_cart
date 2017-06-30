class EditCountryColumnOnProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :country_of_origin, :string
    add_column :products, :country, :string
  end
end
