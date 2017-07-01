require 'rails_helper'

describe 'the add a review process' do
  it 'add review to product' do
    product = FactoryGirl.create(:product)
    visit product_path(product)
    click_link 'Add Review'
    fill_in 'Author', :with => 'Brian Fan'
    select('4', :from => 'Rating')
    fill_in 'Content', :with => 'blah blah blah blah blah blah blah blah blah blahblah blah blah blah blahblah blah blah blah blahblah blah blah blah blahblah blah blah blah blahblah blah blah blah blah'
    click_on 'Create Review'
    expect(page).to have_content 'Brian Fan'
  end

  it 'gives errors if review content is too short' do
    product = FactoryGirl.create(:product)
    visit product_path(product)
    click_link 'Add Review'
    fill_in 'Author', :with => 'Brian Fan'
    select('4', :from => 'Rating')
    fill_in 'Content', :with => 'blah'
    click_on 'Create Review'
    expect(page).to have_content 'Content is too short'
  end

end
