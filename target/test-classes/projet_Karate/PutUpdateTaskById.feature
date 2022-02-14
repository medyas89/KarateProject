
@putupdate
Feature: Generate Token
  I want to get all task
   Background:
   * def result = call read('Generate_token.feature@Autorisation')
   Given header Authorization = "Bearer " + result.response.token
  Scenario: get all task
    Given url 'https://api-nodejs-todolist.herokuapp.com/task/6207a7bc89a8670017aee67e'
 When request { "description":true } 
And method put 
Then status 200 
    * print response.data.description
