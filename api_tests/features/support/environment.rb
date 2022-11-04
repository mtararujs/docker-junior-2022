class Environment
  def get_parameters(env_name)
    env_name = "dev"
    flunk("Test environment not specified. Set PLATFORM env. variable before running tests.") if env_name.nil? or env_name.empty?
    env_name = env_name.upcase
    parameters = {}
    valid_envs = %w(DEV PRD)
    unless valid_envs.include? env_name
      flunk("TEST SCRIPT ERROR: Wrong environment name: #{env_name}. Supported environments: #{valid_envs}")
    end

    case env_name
    when 'DEV'
      parameters[:db_host] = "127.0.0.1"
      parameters[:db_port] = "3306"
      parameters[:db_username] = "root"
      parameters[:db_password] = "password"
      parameters[:db_database] = "test_users"
      parameters[:api_host] = "http://127.0.0.1:3000"
    when 'PRD'
      parameters[:db_host] = "127.0.0.1"
      parameters[:db_port] = "32776"
      parameters[:db_username] = "root"
      parameters[:db_password] = "password"
      parameters[:db_database] = "test_users"
      parameters[:api_host] = "http://127.0.0.1:3000"
    else
      #   nothing
    end
    parameters
  end
end
