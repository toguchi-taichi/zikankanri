class PartialsController < ApplicationController
  def index
    @timer = Timer.new
  end

  def show
  end
  
  
  
  private
  
  def timer_params
    params.require(:timer).permit(:counter, :day)
  end
  
  
end
