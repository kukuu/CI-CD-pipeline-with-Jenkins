Feature: Live event

  In order to keep up to date with an event
  As a mobile news reader
  I want to view all related information correctly

  Info
  ----
	  
  - Author: Alexander Adu-Sarkodie


  @wip
  Scenario: Live event page without video
   Given there is a live event "Conservative Party conference 2019”
   And it has 4 Key Points
   When I visit the live events page
   And I view the key points
   Then I should see title "Conservative Party conference 2019”
   And I should see 4 key points
  
  Scenario: Live event stories are flagged as such on the frontpage
    Given there is 1 live story
    When I visit the home page
    Then there should be one article with a live icon

  @qa
  Scenario: Live event article *descending* order
    Given a mobile news index page
    And I am using a smartphone
    When I view a live events page
    Then the story should appear in descending order

  @qa
  Scenario: Live event article *ascending* order 
    Given a non-live News index page
    And I am using a smartphone
    When I view a live events page
    Then the story should appear in ascending order

  @qa
  Scenario: Live event displays a new story when refreshed
    Given a live News index page
    And a new story has been published
    And I am using a feature phone
    When I refresh the page
    Then the new story should be displayed
