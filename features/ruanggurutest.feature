 Feature: Search skills

 Scenario: As a User, I should be able to search skills in SkillAcademy homepage
    Given I visit "https://skillacademy.com"
    When I search for "Data"
    Then I should see search result for "Dasar Data Engineer untuk Data Warehouse"
 