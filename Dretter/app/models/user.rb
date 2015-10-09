class User < ActiveRecord::Base
  has_many :tweets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :set_default

  def set_default
    self.name = '名無し'
    self.profile = 'プロフィールを設定しましょう'
    self.header_image = 'https://s.yimg.com/uy/build/images/sohp/backgrounds/bottom5.jpg'
    self.icon_image = 'http://up.gc-img.net/post_img/2013/07/vdKuSHGm3JqOSou_sWPIG_16.png'
  end
end
