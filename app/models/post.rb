class Post < ActiveRecord::Base
  belongs_to :journal
  attr_accessible :user, :body, :title, :rating, :date
  scope :past_week,
  				where("created_at > ?", 7.days.ago)
  validates :body, :title, :rating, presence: true
end
