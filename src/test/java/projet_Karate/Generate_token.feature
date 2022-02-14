
@Autorisation
Feature: Generate Token
  I want to generate the token 

  Scenario: generate Token
    Given url 'https://api-nodejs-todolist.herokuapp.com/user/login'
    And request {email:'muh.nurali43@gmail.com',password:'12345678'}
    When method POST 
    Then status 200
    And match response.token == '#notnull'
    * print response.token