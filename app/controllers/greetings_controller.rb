class GreetingsController < ApplicationController
  def index
    @greeting = Greeting.order('RANDOM()').first.text
    render json: @greeting
  end
end
