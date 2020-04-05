class CalendarsController < ApplicationController
  def index
    # 直近７日間で勉強した日付を配列で取得
    gon.days = Calendar.days_data(current_user.timers.select(:counter, :day).last(7))
    # 直近７日間で勉強した日付（key）勉強時間(value)をハッシュで取得
    gon.counter = Calendar.counter_data(current_user.timers.select(:counter, :day).last(7))
    # 現在月の日付データを配列で取得
    month_days = current_user.timers.where(day: Calendar.month_data).select(:day).to_a
    gon.month_data = month_days.map { |element| element.day }
  end

  def show
  end
  
  
end
