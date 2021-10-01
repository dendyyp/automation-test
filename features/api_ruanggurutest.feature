Feature: GET search result

    Scenario: As I user, I can hit GET endpoint to retrieve search result
    When client sends a GET request to "skillacademy.com/skillacademy/discovery/search"
    Then response status should be "200"
    And response "$.data.basePrice" should be integer
    And response "$.data.courseDescription" should be string
    And response "$..page" should be integer
    And response "$..pageSize" should be integer
    And response "$..totalCourse" should be integer
    And response "$..totalPage" should be integer
