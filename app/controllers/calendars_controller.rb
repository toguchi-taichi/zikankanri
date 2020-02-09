class CalendarsController < ApplicationController
  def index
    x = Date.today
    y = x - 6
    m = x.strftime("%Y-%m-%d")
    n = y.strftime("%Y-%m-%d")
    z = (Date.parse(n)..Date.parse(m)).to_a
    i = z.map {|date| date.strftime("%Y-%m-%d") } 
    days = Timer.select(:counter, :day).last(7)
    l = days.map {|o| o.day}
    k = days.map {|r| r.counter}
    k = k.map {|timer| 
    hour, sec = timer.divmod(3600)
    c = sec / 3600.to_f
    q = c.ceil(1)
    hour + q
    }
    j = [l, k].transpose
    s = Hash[*j.flatten]
    gon.counter = s
    gon.day = l
    gon.days = i
  end

  def show
  end
  
  
end
