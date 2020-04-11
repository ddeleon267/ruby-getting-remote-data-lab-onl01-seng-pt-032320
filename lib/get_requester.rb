require 'net/http' # Ruby library that allows your program or application to send HTTP requests
require 'open-uri' # wrapper for NET:HTTP
require 'json'
require "pry"
class GetRequester
  #URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json."
  def initialize(url)
    @url = url
  end

  def url
    @url
  end

  def get_response_body
    # The GetRequester class should have a get_response_body method that sends a
    # GET request to the URL passed in on initialization. This method should return the body of the response.
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    response_body = get_response_body
    person_array = JSON.parse(response_body)
    # The GetRequester class should have a parse_json method should use get_response_body
    # to send a request, then return a Ruby Array or Hash made up of data converted from the response of that request.
  end

end
