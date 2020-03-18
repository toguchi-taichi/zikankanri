class TimersController < ApplicationController
  def index
    
  end

  def show
    # インスタンスのcounterカラム値変更
    @timer = current_user.timers.find(params[:id])
    instance_counter = @timer.counter
    params_counter = params[:counter].to_i
    @timer.update(counter: instance_counter + params_counter)
    redirect_to calendars_path
  end
  
  def new
    @timer = Timer.new
    
    render :json => @timer
  end
  
  def create
    # paramaterで受け取った日付と同じ日付のデータをデータベースから検索。登録か更新かの条件分岐に使用する
    even_date = current_user.timers.find_by(day: timer_params[:day])
    timer_params_to_h = timer_params.to_h
    timer_params_to_h.store('counter', Timer.counter_shape(timer_params_to_h))
    @timer = current_user.timers.new(timer_params_to_h)
    if even_date.nil?
      @timer.save!
      redirect_to calendars_path
    else
      redirect_to action: 'show', id: even_date.id, day: timer_params_to_h['day'], counter: timer_params_to_h['counter'] 
    end
    binding.pry
  end
  
  def update
    
  end
  
  private
  
  def timer_params
    params.require(:timer).permit(:counter, :day)
  end
  
  
  
  
end
