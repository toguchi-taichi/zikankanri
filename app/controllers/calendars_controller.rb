class CalendarsController < ApplicationController
  def index
    gon.days = Calendar.days_data(current_user.timers.select(:counter, :day).last(7))
    gon.counter = Calendar.counter_data(current_user.timers.select(:counter, :day).last(7))
    flash.now[:notice] = '今日の日付をクリックして勉強時間を計測しよう！！'
  end

  def show
  end
  
  
end
