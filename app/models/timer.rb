class Timer < ApplicationRecord
  # timerテーブルのuser_idと、userテーブルのidを関連づけてテーブルを内部結合させる。
  belongs_to :users, optional: true
  
  def self.counter_shape(timer)
    # parameterで送られてきたcounter値を秒に整形
    counter = Time.parse(timer[:counter])
    y = counter.to_a.slice(0..2)
    z = y[2] * 3600
    j = y[1] * 60
    y[0] + z + j
  end
end
