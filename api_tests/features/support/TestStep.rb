require 'test-unit'

class TestStep
  attr_accessor :host
  attr_accessor :path
  attr_accessor :method
  attr_accessor :headers
  attr_accessor :request_payload
  attr_accessor :response

  def initialize(host: '',
                 path: '',
                 method: '',
                 request_payload: nil,
                 headers: {}
  )
    @host = host
    @path = path
    @method = method
    @request_payload = request_payload
    @headers = headers
  end

  def send_request
    # payload = @request_payload.nil? ? nil : @request_payload.to_json
    # @path = '' if @path.nil?
    if @method.eql? "POST"
      @response = post(@host + @path,
                       headers: @headers,
                       cookies: {},
                       payload: payload)
    elsif @method.eql? "PUT"
      @response = put(@host + @path,
                       headers: @headers,
                       cookies: {},
                       payload: payload)
    elsif @method.eql? "PATCH"
      @response = patch(@host + @path,
                      headers: @headers,
                      cookies: {},
                      payload: payload)
    elsif @method.eql? "DELETE"
      @response = delete(@host + @path,
                       headers: @headers,
                       cookies: {})
    elsif @method.eql? "GET"
      @response = get(@host + @path,
                      headers: @headers,
                      cookies: {})
    end
  end


  def remove_payload
    @request_payload = nil
  end

  def add_header(header)
    @headers = headers.merge(header)
  end

  def remove_header(header_name)
    @headers.delete(header_name)
  end

  def remove_headers
    @headers = {}
  end

  def set_x_correlation_id
    add_header({'X-Correlation-Id' => 'test_automation_' + DateTime.now.strftime('%Y%m%d_%H%M%S_') + rand(36**10).to_s(36)})
  end
end
