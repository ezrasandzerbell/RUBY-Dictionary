require('capybara/rspec')
require('./app')
require('words')
require('definitions')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('takes user to target route', {:type => :feature}) do
  before() do
    visit('/')
    click_link('Click here to get started')
  end
  it('tests click link to get started') do
    expect(page).to have_content('Word Dictionary Form')
  end
  it('enters word into form and takes user to next page') do
    fill_in('word_entry', :with => "dog")
    click_button("Submit Word")
    expect(page).to have_content('dog')
  end
  it('clicks the word-link and brings user to definition page') do
    fill_in('word_entry', :with => "cat")
    click_button("Submit Word")
    expect(page).to have_content('cat')
    click_link("cat")
    expect(page).to have_content('cat')
  end
  it('clicks the word-link and brings user to definition page') do
    fill_in('word_entry', :with => "bat")
    click_button("Submit Word")
    expect(page).to have_content('bat')
    click_link("bat")
    expect(page).to have_content('bat')
    click_link('Back to word list')
    expect(page).to have_content('bat')
  end
  it('clicks the word-link and brings user to definition page') do
    fill_in('word_entry', :with => "happy")
    click_button("Submit Word")
    expect(page).to have_content('happy')
    click_link("happy")
    expect(page).to have_content('Definitions for the')
    click_link('Create new word')
    expect(page).to have_content('Word Dictionary Form')
  end
end
