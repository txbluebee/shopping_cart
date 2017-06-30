require 'rails_helper'

describe "the edit a list process" do
  it "edits a product" do
    product = Product.create(:name => 'Iphone 8', :cost => 600, :country => 'USA')
    visit product_path(product)
    click_link 'Edit Product Info'
    fill_in 'Name', :with => 'Ipad 2'
    click_on 'Update Product'
    expect(page).to have_content 'Ipad 2'
  end

  it "gives error when no cost is entered" do
    product = Product.create(:name => 'Iphone 8', :cost => 600, :country => 'USA')
    visit product_path(product)
    click_link 'Edit Product Info'
    fill_in 'Cost', :with => 'Ipad'
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end
end
