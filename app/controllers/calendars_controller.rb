class CalendarsController < ApplicationController
  def index
    gon.days = Calendar.days_data(current_user.timers.select(:counter, :day).last(7))
    gon.counter = Calendar.counter_data(current_user.timers.select(:counter, :day).last(7))
    month_days = current_user.timers.where(day: Calendar.month_data).select(:day).to_a
    gon.month_data = month_days.map { |element| element.day }
  end

  def show
  end
  
  
end
