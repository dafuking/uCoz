Feature: Test login

  Scenario Outline: Test page blocks
    Given Open the page "https://ukit.com/ru/signIn"
    Then I have title "uKit — Вход"
    And I have the "<page_block>" with "<name>" name

    Examples:
    | page_block  | name                  |
    | form_name   | Вход                  |
    | soc_block   | через социальные сети |
    | chk_box     | Чужой компьютер       |
    | reg_link    | Регистрация           |
    | forgot_link | Забыли пароль?        |

  Scenario Outline: Test login form with wrong data
    Given Open the page "https://ukit.com/ru/signIn"

    When I fill field "email" with "<email>"
    And I fill field "pass" with "<pass>"
    Then Button "login_btn" should not be active

    Examples:
    | email        | pass     |
    |              |          |
    | qwe          | 123      |

  Scenario Outline: Test with unknown user
    Given Open the page "https://ukit.com/ru/signIn"
    When I fill field "email" with "<email>"
    And I fill field "pass" with "<pass>"
    And I click button "login_btn"
    Then I should see "<alert>" with "<message>"

    Examples:
    | alert           | email        | pass   | message                                  |
    | not_exist_email | qwe@qwe.qw   | 123123 | Пользователь с таким email не существует |
    | incorrect_pass  | test666@ro.ru| 321321 | Неверный пароль                          |


  Scenario: Test correctly login
    Given Open the page "https://ukit.com/ru/signIn"
    When I fill field "email" with "test666@ro.ru"
    And I fill field "pass" with "123123"
    Then Button "login_btn" should be active
    And After login I should see "ava_name" and equal "test666@ro.ru"



