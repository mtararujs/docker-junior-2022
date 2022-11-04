require 'rest-client'

def post(url, headers: {}, cookies: {}, payload: {})
  # RestClient.log = 'stdout'
  RestClient::Request.execute(
    method: :post,
    url: url,
    headers: headers,
    cookies: cookies,
    payload: payload,
    :verify_ssl => false
  ) do |response|
    response
  end
end

def get(url, headers: {}, cookies: {})
  # RestClient.log = 'stdout'
  RestClient::Request.execute(
    method: :get,
    url: url,
    headers: headers,
    cookies: cookies,
    :verify_ssl => false
  ) do |response|
    response
  end
end

def put(url, headers: {}, cookies: {}, payload: {})
  # RestClient.log = 'stdout'
  RestClient::Request.execute(
    method: :put,
    url: url,
    headers: headers,
    cookies: cookies,
    payload: payload,
    :verify_ssl => false
  ) do |response|
    response
  end
end

def delete(url, headers: {}, cookies: {})
  # RestClient.log = 'stdout'
  RestClient::Request.execute(
    method: :delete,
    url: url,
    headers: headers,
    cookies: cookies,
    :verify_ssl => false
  ) do |response|
    response
  end
end
