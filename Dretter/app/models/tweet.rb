class Tweet < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  validates :text, presence: true
end
