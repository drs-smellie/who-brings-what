class Event < ActiveRecord::Base
  belongs_to :user

  validates :name, length: { minimum: 3 }, presence: true
  validates :date, presence: true
end
