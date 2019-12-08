Given("I am on the index page") do
    visit root_path
end

Given("the following articles exist") do |table|
    table.hashes.each do |hash|
        Article.create!(hash)
    end
end

When("I click {string}") do |element|
  click_on element
end

When("I fill in {string} with {string}") do |input, content|
    fill_in input, with: content
end

Then("I should see {string}") do |content|
  expect(page).to have_text content
end

Then("I should be on {string} page") do |article_title|
  article = Article.find_by(title: article_title)
  expect(current_path).to eq article_path(article)  
end

Given("the following users exits:") do |table|
  table.hashes.each do |user_attr|
    User.create!(user_attr)
  end
end

Given("I am logged in as {string}") do |email|
 user=User.find_by(email: email)
 login_as(user, scope: :user)
end

Then("I should not see {string}") do |element|
  expect(page).not_to have_content element
end