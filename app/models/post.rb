class Post < ActiveRecord::Base
  belongs_to :journal
  attr_accessible :user, :body, :title, :rating, :date
  validates :body, :title, :rating, presence: true
end
