require 'rails_helper'

describe 'the add a review process' do
  it 'add review to product' do
    product = Product.create(:name => 'Iphone 8', :cost => 600, :country => 'USA')
    visit product_path(product)
    click_link 'Add Review'
    fill_in 'Author', :with => 'Brian Fan'
    fill_in 'Rating', :with => 4
    fill_in 'Content', :with => 'blah blah blah blah blah blah blah blah blah blahblah blah blah blah blahblah blah blah blah blahblah blah blah blah blahblah blah blah blah blahblah blah blah blah blah'
    click_on 'Create Review'
    expect(page).to have_content 'Brian Fan'
  end

  it 'gives errors if user entered text into Rating column' do
    product = Product.create(:name => 'Iphone 8', :cost => 600, :country => 'USA')
    visit product_path(product)
    click_link 'Add Review'
    fill_in 'Author', :with => 'Brian Fan'
    fill_in 'Rating', :with => 'Hello'
    fill_in 'Content', :with => 'blah blah blah blah blah blah blah blah blah blahblah blah blah blah blahblah blah blah blah blahblah blah blah blah blahblah blah blah blah blahblah blah blah blah blah'
    click_on 'Create Review'
    expect(page).to have_content 'Rating is not a number'
  end

end
