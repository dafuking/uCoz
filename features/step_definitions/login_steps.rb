require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
require_relative '../../aliases'


Given(/^Open the page "([^"]*)"$/) do |arg1|
  @driver = Selenium::WebDriver.for :firefox
  @driver.get (arg1)
end

Then(/^I have title "([^"]*)"$/) do |arg1|
  @driver.title == arg1
end
