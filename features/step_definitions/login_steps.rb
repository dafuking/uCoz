require 'selenium-webdriver'
#require_relative 'abstract_page'
include Page_utils

def element1(arg1)
  element(Elements_path[arg1.to_sym])
end

Given(/^Open the page "([^"]*)"$/) do |arg1|
  openPage(arg1)
end


Then(/^I have title "([^"]*)"$/) do |arg1|
  title == arg1
end

Given(/^I have the "([^"]*)" with "([^"]*)" name$/) do |arg1, arg2|
  name = element1(arg1)
  if name.text == arg2
    puts "ok"
  end
end

When(/^I fill field "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  field = element1(arg1)
  field.send_keys(arg2)
end

And(/^I click button "([^"]*)"$/) do |arg1|
  element1(arg1).click
end

Then(/^Button "([^"]*)" should not be active$/) do |arg1|
  if not element1(arg1).enabled?
    puts "zzzbbss"
  end
end

Then(/^Button "([^"]*)" should be active$/) do |arg1|
  login = element1(arg1)
  if login.enabled?
    puts "zzzbbss enabled"
    login.click
  else
    puts "beda"
  end
end

And(/^After login I should see "([^"]*)" and equal "([^"]*)"$/) do |arg1, arg2|
  ava = element1(arg1)
  @wait.until { ava.enabled? }
  if ava.text == arg2
    puts "ava ok"
  else
    puts "ne ava"
  end
end