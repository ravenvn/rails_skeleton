class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook, :google_oauth2]
  after_create :send_welcome_mail

  mount_uploader :avatar, AvatarUploader

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.name = auth.info.name
      user.remote_avatar_url = auth.info.image + '?type=large'
      user.password = Devise.friendly_token[0,20]
    end
  end

  def send_welcome_mail
    UserMailer.welcome_email(self).deliver_now
  end
end
