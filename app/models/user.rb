class User < ActiveRecord::Base
  has_secure_password

  validates_uniqueness_of   :email, :name
  validates_presence_of    :email, :name

  validates :password, length: { minimum: 6 }, allow_blank: false
  validates :password, presence: true, on: :create

end
