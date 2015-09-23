class Event < ActiveRecord::Base
  validates :occurs_at, :location, presence: true
  validates :location, length: { minimum: 5 }

  validates :location, uniqueness: { scope: :occurs_at,
                                     message: 'An event has already been scheduled at that time',
                                     case_sensitive: false }

  has_many :movies
  has_many :votes
end
