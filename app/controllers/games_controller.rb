require "open-uri"

class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    if word
      @answer = "<em>Congratulations!</em> #{word} is a valid English word!"
    elsif word
      @answer = "Sorry but #{word} does not seem to be a valid English word..."
    elsif word
      @answer = "Sorry but #{word} can't be built out of the letters"
    end
  end
end
