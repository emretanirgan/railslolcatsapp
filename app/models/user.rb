class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  has_one :journal
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :name, :journal
  validates :email, :password, :name, presence: true
end
