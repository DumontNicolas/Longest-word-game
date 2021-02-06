require 'open-uri'
class GamesController < ApplicationController

  def initialize
    @letters = ('a'..'z').to_a.shuffle[0, 10]
  end

  def new
  end

  def score
    @word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    json = open(url).read
    @result = JSON.parse(json)
  end
end
