class User < ActiveRecord::Base

  def self.from_omniauth(auth)
    where(uid: auth[:uid]).first_or_create do |new_user|
      new_user.uid      = auth.uid
      new_user.name     = auth.info.name
      new_user.username = auth.info.nickname
      new_user.avatar   = auth.info.image
      new_user.token    = auth.credentials.token
    end
  end
end
