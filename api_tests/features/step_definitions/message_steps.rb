When(/^I retrieve message by id: "([^"]*)"$/) do | message_id |
  get_message_by_id(message_id)
end

When(/^message content contains "([^"]*)"$/) do | message |
  assert_message_contains(message)
end
