class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :journal, :last_name
end
