class Post < ActiveRecord::Base
  belongs_to :journal
  attr_accessible :user, :body, :title
end
