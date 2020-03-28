class Calendar < ApplicationRecord
  
    
    # ログインユーザが勉強した日付けをデータベースから取得。主キーの最後から遡り７番目までの範囲で配列にて取得。chartグラフで使用
    def self.days_data(data)
      data.map {|o| o.day}.sort
    end
    
    # ログインユーザの勉強時間をデータベースから取得。主キーの最後から７番目までの範囲でハッシュにて取得。chartグラフで使用
    def self.counter_data(data)
      w = data.map {|hash| [hash.day, hash.counter]}
      o = Hash[*w.flatten].sort
      i = o.map {|e, f| [e, f.divmod(3600)]}.to_h
      i.map{|l, (r, w)| [l, r + w / 3600.to_f.ceil(1)]}.to_h
    end
    
    def self.month_data
      now = Date.today
      month_first_day = now.beginning_of_month
      month_last_day = now.end_of_month
      month_all_day = (month_first_day.strftime('%Y-%m-%d'))..(month_last_day.strftime('%Y-%m-%d'))
      month_all_day_to_array = month_all_day.to_a
    end
end
