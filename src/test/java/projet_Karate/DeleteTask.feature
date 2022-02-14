
@DeleteTask
Feature: Generate Token
  I want to get all task
   Background:
   * def result = call read('Generate_token.feature@Autorisation')
   * def task = call read('AddTask.feature@addTask')
   Given header Authorization = "Bearer " + result.response.token
  Scenario: get all task
    Given url 'https://api-nodejs-todolist.herokuapp.com/task/' + task.response.data._id
And method delete
Then status 200
    * print response.data.description
