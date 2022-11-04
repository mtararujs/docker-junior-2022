Before() do
  puts "Before hook. This will work before every test case!"
  $parameters = Environment.new.get_parameters(ENV['PLATFORM'])
  @db = Db.new('mysql')
  @test_step = TestStep.new(
      host: $parameters[:api_host],
      headers: {'Content-Type' => 'application/json'}
  )
end

After() do
  puts "This happens after a test!"
end
