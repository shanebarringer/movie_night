class Movie < ActiveRecord::Base
  validates :title, :url, presence: true

  has_many :votes
  belongs_to :event
end
