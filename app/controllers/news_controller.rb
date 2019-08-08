class NewsController < ApplicationController

  def news
    require 'rest-client'
    require 'json'
url = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=190eced97add47aa9ec56df8e676d1d8'
response = RestClient.get(url)
@result = JSON.parse(response)

  end

  def sources
    require 'rest-client'
    require 'json'
 url = 'https://newsapi.org/v2/sources?apiKey=190eced97add47aa9ec56df8e676d1d8'
 response = RestClient.get(url)
 @result = JSON.parse(response)
  end
end
