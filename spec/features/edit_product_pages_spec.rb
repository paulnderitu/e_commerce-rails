require 'rails_helper'

describe 'the edit a product process' do
  it 'edits a product' do
    brand = Brand.create(title: 'Good stuff')
    product = Product.create(item: 'rear light', brand_id: brand.id)
    visit brand_path(brand)
    click_on 'Edit'
    fill_in 'Item', with: 'front light'
    click_on 'Update Product'
    expect(page).to have_content 'front light'
  end

  it 'gives error when no item is entered' do
    brand = Brand.create(title: 'Good stuff')
    product = Product.create(item: 'rear light', brand_id: brand.id)
    visit brand_path(brand)
    click_on 'Edit'
    fill_in 'Item', with: ''
    click_button 'Update Product'
    expect(page).to have_content 'errors'
  end
end
