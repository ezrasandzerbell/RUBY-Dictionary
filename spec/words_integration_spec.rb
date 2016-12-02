require('capybara/rspec')
require('./app')
require('words')
require('definitions')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('takes user to target route', {:type => :feature}) do
  before() do
    visit('/')
    click_link('index_image')
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
  it('clicks the word-link and brings user to word list page') do
    fill_in('word_entry', :with => "happy")
    click_button("Submit Word")
    expect(page).to have_content('happy')
    click_link("happy")
    expect(page).to have_content('Definitions for the')
    click_link('Back to word list')
    expect(page).to have_content('Your Word List')
  end
  it('clicks the word-link and brings user to definition page') do
    fill_in('word_entry', :with => "joy")
    click_button("Submit Word")
    expect(page).to have_content('joy')
    click_link("joy")
    expect(page).to have_content('Definitions for the')
    click_link('Assign a new definition')
    expect(page).to have_content('Word Definition Form')
  end
end
