class Tweet < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  validates :text, presence: true

  belongs_to :fake_user, class_name: :User

  before_create :set_fake_user

  def set_fake_user
    self.fake_user_id = user.active_group.users.sample.id
  end
end
