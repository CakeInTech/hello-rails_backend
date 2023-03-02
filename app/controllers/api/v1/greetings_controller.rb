class Api::V1::GreetingsController < ApplicationController
  before_action :set_greeting, only: %i[show update destroy]

  # GET /greetings
  def index
    @greetings = Greeting.all.sample.slice(:content)

    render json: @greetings
  end
end
