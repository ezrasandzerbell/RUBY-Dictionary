require('capybara/rspec')
require('./app')
require('words')
require('definitions')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('takes user to target route', {:type => :feature}) do
  before() do
    visit('/')
  end
  it('enters word into form and takes user to next page') do
    fill_in('word_entry', :with => "dog")
    click_button("Submit Word")
    expect(page).to have_content('dog')
  end
end
