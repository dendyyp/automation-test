Feature: GET search

    Scenario: As I user, I can hit GET endpoint to retrieve search result
    When client sends a GET request to "skillacademy.com/skillacademy/discovery/search"
    Then response status should be "200"
    And response should have
