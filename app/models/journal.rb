class Journal < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  attr_accessible :posts
end
