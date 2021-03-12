require 'json'
require 'rest-client'

module Crawler
  BASE_URL = "http://export.arxiv.org/api/query?"

  def self.get(search_query="all", start=0, max_results: 20)
    puts "searching .... #{search_query}"
    begin
      response = RestClient.get(BASE_URL, params: {search_query: search_query, start: start, max_results: max_results})
      raise Net::HTTPBadResponse if response.code != 200
      Feedjira.parse(response.body).entries
    rescue RestClient::Exception => e
       p "#{e.response.request.inspect}"
    end
  end
end
