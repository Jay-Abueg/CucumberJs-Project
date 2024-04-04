
Feature: Login Functionality

  Scenario Outline: User login with valid credentials
    Given user visits the "<website>"
    When user enter username "<username>" and password "<password>"
    Then user can view the product page
    And browser closes
    Examples:
      | website                   | username      | password     |
      | https://www.saucedemo.com | standard_user | secret_sauce |
      | https://www.saucedemo.com | problem_user  | secret_sauce |

  Scenario Outline: User login with invalid credentials
    Given user visits the "<website>"
    When user enter username "<username>" and password "<password>"
    Then user can't view the product page
    And browser closes
    Examples:
      | website                   | username     | password     |
      | https://www.saucedemo.com | standar_user | secret_sauce |
      | https://www.saucedemo.com | proble_user  | secret_sauce |

  Scenario Outline: User login with some blank credentials
    Given user visits the "<website>"
    When user enter username "<username>" and password "<password>"
    Then user is required to input a "<required>"
    And browser closes
    Examples:
      | website                   | username     | password     | required         |
      | https://www.saucedemo.com |              |              | username         |
      | https://www.saucedemo.com | standar_user |              | password         |
   
