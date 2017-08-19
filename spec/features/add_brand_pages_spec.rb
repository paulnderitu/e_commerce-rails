require 'rails_helper'

describe 'the add a brand process' do
  it 'adds a new brand' do
    visit brands_path
    click_link 'New Brand'
    fill_in 'title', with: 'Good stuff'
    click_on 'Create Brand'
    expect(page).to have_content 'Brands'
  end

  it 'gives error when no title is entered' do
    visit new_brand_path
    click_on 'Create Brand'
    expect(page).to have_content 'errors'
  end
end
