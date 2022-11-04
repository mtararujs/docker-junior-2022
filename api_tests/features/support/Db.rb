require 'mysql2'

class Db
  attr_accessor :connection

  def initialize(db_type)
    @connection = Mysql2::Client.new(:host => $parameters[:db_host], :username => $parameters[:db_username], :password => $parameters[:db_password], :database => $parameters[:db_database], :port => $parameters[:db_port])
  end
end
