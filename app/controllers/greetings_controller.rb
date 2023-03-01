class GreetingsController < ApplicationController
  before_action :set_greeting, only: %i[ show update destroy ]

  # GET /greetings
  def index
    @greetings = Greeting.all.sample

    render json: @greetings
  end
end
