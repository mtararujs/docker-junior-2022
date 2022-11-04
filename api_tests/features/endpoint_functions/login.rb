require 'rest-client'
require 'test-unit'

def login_admin
  result = @db.connection.query("SELECT * FROM users WHERE active=1 ORDER BY creation_date DESC LIMIT 1;")
  result.each {  |x| puts x }
end
