Feature: Test login

  Scenario: Test title

    Given Open the page "https://ukit.com/ru/signIn"
    Then I have title " uKit — Вход "

  Scenario Outline: Test login form with wrong data
    Given Open the page "https://ukit.com/ru/signIn"
    Given I have the "form_name" with "Вход" name
    When I fill field "email" with "<email>"
    And I fill field "pass" with "<pass>"
    Then Button "login_btn" should not be active

    Examples:
    | email        | pass     |
    | ''           | ''       |
    | qwe          | 123      |

  Scenario: Test correctly login
    Given Open the page "https://ukit.com/ru/signIn"
    When I fill field "email" with "test666@ro.ru"
    And I fill field "pass" with "123123"
    Then Button "login_btn" should be active
    And After login I should see "ava_name" and equal "test666@ro.ru"



