require 'rails_helper'

describe "the edit a list process" do
  it "edits a product" do
    product = FactoryGirl.create(:product)
    visit product_path(product)
    click_link 'Edit Product Info'
    fill_in 'Name', :with => 'Iphone 7'
    click_on 'Update Product'
    expect(page).to have_content 'Iphone 7'
  end

  it "gives error when no cost is entered" do
    product = FactoryGirl.create(:product, :name => 'Ipad 2')
    visit product_path(product)
    click_link 'Edit Product Info'
    fill_in 'Cost', :with => 'Ipad'
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end

  it "delete the product" do
    product = FactoryGirl.create(:product)
    visit product_path(product)
    click_link 'Delete Product'
    expect(page).to have_content 'Product successfully deleted!'
  end
end
