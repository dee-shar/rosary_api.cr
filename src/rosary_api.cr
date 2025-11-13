require "json"
require "http/client"

class RosaryApi
  API_PATH = "v1"
  def initialize
    @headers = HTTP::Headers{
      "Content-Type" => "application/json",
      "Accept" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://the-rosary-api.vercel.app")
    @http_client = HTTP::Client.new(uri)
  end

  def get_rosary(type : String) : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/#{type}", headers: @headers).body)
  end

  def get_rosaries() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/list", headers: @headers).body)
  end
end
