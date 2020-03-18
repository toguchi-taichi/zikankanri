class User < ApplicationRecord
  # ユーザが複数のtimerデータを持つ
  has_many :timers
  
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :omniauthable, omniauth_providers: [:twitter]

  def self.from_omniauth(auth)
    find_or_initialize_by(provider: auth["provider"], uid: auth["uid"]) do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.username = auth["info"]["nickname"]
      user.name = auth["info"]["name"]
      user.email = User.dummy_email(auth)
      user.image = auth["info"]["image"]
      user.location = auth["info"]["location"]
      user.password = Devise.friendly_token[0, 20]
    end
  end

  
  
  private
  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end


end
