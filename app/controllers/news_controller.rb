class NewsController < ApplicationController

  def world_news
    require 'news-api'
    require 'rest-client'
    require 'json'
    # newsapi = News.new("190eced97add47aa9ec56df8e676d1d8")
    # @top_headlines = newsapi.get_top_headlines(sources: "bbc-news")

    url = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=190eced97add47aa9ec56df8e676d1d8'
    response = RestClient.get(url)
    @result = JSON.parse(response.body)
    @articles = @result["articles"]
    @specific = @articles.find {|article| article["author"] == "Charles Riley, CNN Business"}
    
  end

  def latest_news
    require 'rest-client'
    require 'json'
    url = 'https://newsapi.org/v2/sources?apiKey=190eced97add47aa9ec56df8e676d1d8'
    response = RestClient.get(url)
    @result = JSON.parse(response)
  end
end
