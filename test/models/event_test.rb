require 'test_helper'

class EventTest < ActiveSupport::TestCase
  def setup
    @event = events(:event_two)
  end

  # test "the truth" do
  #   assert true
  # end

  test 'has a valid fixture' do
    assert @event.valid?
  end

  should validate_presence_of(:occurs_at)
  should validate_presence_of(:location)
  # should validate_length_of(:location).is_at_least(5)

  should validate_uniqueness_of(:location).scoped_to(:occurs_at)
    .with_message('An event has already been scheduled at that time')
    .case_insensitive

  should have_many(:movies)
  should have_many(:votes)

end
