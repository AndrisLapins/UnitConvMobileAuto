Given(/^I am on Home screen$/) do
  @pages.keyboard.keyboard.displayed?
end

When(/^I press on Menu icon$/) do
  @pages.header_section.invoke_side_menu
end

When(/^I swipe (right|left)$/) do |direction|
  MOBILE.swipe(direction)
end

When(/^I select "([^"]*)" category$/) do |category|
  @pages.side_menu.select_category(category)
end

Then('I should see side menu') do
  assert_true(!@pages.side_menu.side_menu_sections.empty?)
end
