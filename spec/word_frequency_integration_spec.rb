require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the word frequency calculator path', {:type=>:feature}) do
  it('process user target word and sentence and calculates the frequency of the target word in the sentence') do
    visit('/')
    fill_in('target_word', :with => 'happy')
    fill_in('sentence', :with => 'happy birthday to you, happy birthday to you, happy birthday dear Epicodus')
    click_button('Calculate number of times your word appears in the sentence!')
    expect(page).to have_content('Your word appears 3 times in your sentence!')
  end
end
