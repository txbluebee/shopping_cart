require 'rails_helper'

describe "the add a list process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add Product'
    fill_in 'Name', :with => 'Sport Shoe'
    fill_in 'Cost', :with => '8'
    fill_in 'Country', :with => 'Taiwan'
    click_on 'Create Product'
    expect(page).to have_content 'All Products'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
