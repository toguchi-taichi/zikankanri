class TimersController < ApplicationController
  def index
    
  end

  def show
    @timer = Timer.find(params[:id])
    x = @timer.counter
    y = params[:counter].to_i
    @timer.update(counter: x + y)
    redirect_to calendars_path
  end
  
  def new
    @timer = Timer.new
  end
  
  def create
    x = Timer.find_by(day: timer_params[:day])
    y = timer_params.to_hash
    @timer = Timer.new(timer_params)
    if x.nil?
      @timer.save!
      redirect_to calendars_path
    else
      redirect_to action: 'show', id: x.id, day: y['day'], counter: y['counter'] 
    end
  end
  
  def update
    
  end
  
  private
  
  def timer_params
    params.require(:timer).permit(:counter, :day)
  end
  
  
  
  
end
