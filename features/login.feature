Feature: Test login

  Scenario: Test title

    Given Open the page "https://ukit.com/ru/signIn"
    Then I have title " uKit — Вход "

  Scenario Outline: Test login form
    Given I have the "form_name" "Вход"
    When I fill field "email" with "<email>"
    And I fill field "pass" with "<pass>"
    And I click button "login_btn"
    Then I should see "alert" with "<message>"

    Examples:
    | email        | pass     | message |
    | ""           | ""       | ""      |
    | "qwe"        | "123"    | ""      |
    | "qwe@qwe.qw" | "123123" | ""      |


