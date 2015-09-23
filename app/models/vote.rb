class Vote < ActiveRecord::Base
  validates :person, presence: true

  belongs_to :event
  belongs_to :movie
end
