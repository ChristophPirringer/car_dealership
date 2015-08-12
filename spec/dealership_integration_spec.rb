require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the dealership path', {:type => :feature}) do
  it('goes to the add-dealership page, adds one checks for success page') do
    visit('/')
    click_link('Add New Dealership')
    fill_in('name', :with => 'anything')
    click_button('Add Dealership')
    expect(page).to have_content('Success')
  end

  it('goes to the add-dealership page, adds one checks, adds a new vehicle and checks for entry of vehicle') do
    visit('/')
    click_link('Add New Dealership')
    fill_in('name', :with => 'anything')
    click_button('Add Dealership')
    click_link('Add New Vehicle')
    fill_in('make', :with => 'Volvo')
    fill_in('model', :with => '740')
    fill_in('year', :with => '1982')
    click_button('Add Vehicle')
    click_link('See Vehicle List')
    expect(page).to have_content('740')
  end
end
