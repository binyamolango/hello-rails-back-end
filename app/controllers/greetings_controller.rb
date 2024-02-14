class GreetingsController < ApplicationController
  def index
    @greeting = Greeting.order('RANDOM()').first
    if @greeting.present?
      render json: { greeting: @greeting.text }
    else
      render json: { greeting: 'Hello' } # A default greeting
    end
  end
end
