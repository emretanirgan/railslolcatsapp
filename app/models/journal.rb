class Journal < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  scope :public_journals,
  				where(public: true)
  attr_accessible :posts, :public, :user
end
