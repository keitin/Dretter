class Group < ActiveRecord::Base
  has_many :groups_users
  has_many :users, through: :groups_users
  has_many :tweets

  before_create :set_group_default

  def set_group_default
    self.image_url = 'https://s.yimg.com/uy/build/images/sohp/backgrounds/bottom5.jpg'
  end
end
