Feature: all tests related to students



    Background:
    Given user is on login page
    When user enters correct email
    And user enters correct password
    And user clicks on login button
    Then user navigates to students tab

  @StudentCreating
    Scenario Outline: Verify admin can create  and delete a student
    Then user clicks on add student button
      Then user adds student info "<first_name>", "<last_name>", "<phone_number>", "<email>", "<group>", "<study_format>"
      And user clicks on add student button
      Then verify student with "<first_name>", "<last_name>", "<phone_number>", "<email>", "<group>", "<study_format>" was created
      Then user deletes student with "<email>"
      Then verify student with "<first_name>", "<last_name>", "<phone_number>", "<email>", "<group>", "<study_format>"
      Examples:
        | first_name | last_name | phone_number | email            | group              | study_format |
        | Peter      | Parker    | 7736109043   | Parker@gmail.com | Batch1687036529983 | ONLINE       |
        | Sofia      | Mimi      | 7736109042   | Sofia@gmail.com  | Batch1687314226634 | ONLINE       |
        | Maria      | Alla      | 7736109041   | Maria@gmail.com  | Batch1687314226634 | ONLINE       |