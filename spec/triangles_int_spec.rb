require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the type of triangle', {:type => :feature}) do
  it('returns the type of triangle based on the side lengths') do
    visit('/')
    fill_in('side1', :with => "1")
    fill_in('side2', :with => "1")
    fill_in('side3', :with => "1")
    click_button('Submit')
    expect(page).to have_content("Your triangle type is equilateral")
  end
end
