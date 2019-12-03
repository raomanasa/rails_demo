Feature: User can create articles
As a publisher 
In order to add relavent content to my news service
i would like to be able to create articles

Background:
Given I am on the index page
And I click on "New Article"

Scenario: Successfully creates an article
When I fill in "Title" with " Happy holidays"
And I fill in "Content" with " Buy your gifts now!"
And I click on "Create Article"
Then I should be on the "Happy holidays" page
And I should see "Article was successfully created"
And I should see "Happy holidays"
And I should see "Buy your gifts now!"