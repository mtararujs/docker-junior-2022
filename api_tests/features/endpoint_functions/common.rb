def assert_message_contains(message)
  # assert_equal(message, @test_step.response.to_s, "Message content does not match. Expected #{message}, got #{@test_step.response}")
  assert_match(/#{message}/, @test_step.response.to_s)
end

def assert_http_code(code)
  assert_equal(code, @test_step.response.code, "HTTP response code does not match. Expected #{code}, got #{@test_step.response.code}")
end
