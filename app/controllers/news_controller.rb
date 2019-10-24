class NewsController < ApplicationController

  def world_news
    require 'news-api'
    require 'rest-client'
    require 'json'

    # this comment is another way of using the api by using news-api
    # newsapi = News.new("190eced97add47aa9ec56df8e676d1d8")
    # @top_headlines = newsapi.get_top_headlines(sources: "bbc-news")

    url = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=190eced97add47aa9ec56df8e676d1d8'
    response = RestClient.get(url)
    #@json will give us a hash with rocket
    @json = JSON.parse(response.body)
    #@js = @json.to_json will give us a json key: value pair while @json is now giving us a hash
    @articles = @json["articles"]
  end

  def latest_news
    require 'rest-client'
    require 'json'
    url = 'https://newsapi.org/v2/sources?apiKey=190eced97add47aa9ec56df8e676d1d8'
    response = RestClient.get(url)
    @result = JSON.parse(response)
  end
end
