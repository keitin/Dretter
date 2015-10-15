class User < ActiveRecord::Base

  has_many :tweets
  has_many :groups_users
  has_many :groups, through: :groups_users

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :set_default

  def set_default
    self.name = '名無し'
    self.profile = 'プロフィールを設定しましょう'
    self.header_image = 'https://s.yimg.com/uy/build/images/sohp/backgrounds/bottom5.jpg'
    self.icon_image = 'http://up.gc-img.net/post_img/2013/07/vdKuSHGm3JqOSou_sWPIG_16.png'
  end

  def active_group
    Group.find(active_group_id)
  end

  def self.fetch_tweets
    puts "hogehogehogehogeho================"
    redirect_to root_path
  end

end
