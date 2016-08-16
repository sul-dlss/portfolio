require 'rails_helper'

describe 'an exhibit', type: :feature do
  before do
    allow_any_instance_of(Spotlight::Search).to receive(:set_default_thumbnail)
  end

  let!(:exhibit) { FactoryGirl.create(:exhibit) }

  it 'loads the home page' do
    visit '/'
  end

  it 'has working full text fielded search' do
    visit spotlight.url_for(exhibit)
    fill_in 'q', with: 'cobbler'
    select 'Full text', from: 'search_field'
    click_button 'search'
    expect(page.status_code).to eq 200
  end
end
