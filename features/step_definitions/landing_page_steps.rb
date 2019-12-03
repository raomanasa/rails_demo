When('I am on the index page') do
    visit root_path
  end
  
  Then("I should see {string}") do |content|
    expect(page).to have_text content
  end

  Given("the following articles exist:") do |table|
    table.hashes.each do |hash|
      Article.create!(hash)
    end
  end