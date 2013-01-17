class HomeController < ApplicationController
  def index
    @shift_event = ShiftEvent.new
  end
end
