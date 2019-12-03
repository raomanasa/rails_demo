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
  
  #Given("I click on {string}") do |string|
   # pending # Write code here that turns the phrase above into concrete actions
 # end

  When("I fill in {string} with {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("I click on {string}") do |string|
   pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should be on the {string} page") do |string|
   pending # Write code here that turns the phrase above into concrete actions
  end

  