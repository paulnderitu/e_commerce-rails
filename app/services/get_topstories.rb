class Topstories
  def self.get_topstories
    response = RestClient::Request.execute(method: :get, url: 'https://api.nytimes.com/svc/topstories/v2/home.json', headers: { api_key: ENV['NYT_API_KEY'] })
  end
end
