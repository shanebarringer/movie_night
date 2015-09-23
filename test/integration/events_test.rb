require 'test_helper'

class EventsTest < ActionDispatch::IntegrationTest
  test 'Index page shows all events' do
    event_one = events(:event_one)
    event_two = events(:event_two)

    visit events_path

    assert page.has_content?('Events')

    assert page.has_content?(event_one.location)
    assert page.has_content?(event_one.occurs_at)

    assert page.has_content?(event_two.location)
    assert page.has_content?(event_two.occurs_at)
  end

  test 'Can create events' do
    event_time = 10.days.from_now
    visit events_path

    click_link 'Create Event'

    fill_in 'Location', with: 'Industry'
    fill_in 'Date/Time', with: event_time

    click_button 'Create Event'

    assert page.has_content?('Industry')
    assert page.has_content?(event_time)
  end
end
