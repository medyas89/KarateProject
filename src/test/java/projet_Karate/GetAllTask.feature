@GetAllTask
Feature: Generate Token
  I want to get all task
   Background:
   * def result = call read('Generate_token.feature@Autorisation')
   Given header Authorization = "Bearer " + result.response.token
  Scenario: get all task
    Given url UrlBase + 'task'
    
    When method Get 
    Then status 200
    And match response.count == '#notnull'
    * print response.count