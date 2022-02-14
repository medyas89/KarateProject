
@addTask
Feature: Generate Token
  I want to get all task
   Background:
   * def result = call read('Generate_token.feature@Autorisation')
   Given header Authorization = "Bearer " + result.response.token
  Scenario: get all task
    Given url 'https://api-nodejs-todolist.herokuapp.com/task'
 When request { "description": "test" } 
And method post 
Then status 201 
    * print response.data.description
