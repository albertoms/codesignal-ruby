require 'minitest/autorun'
require_relative '../../../lib/arcade/intro/the_journey_begins'

class TheJourneyBeginsTest < Minitest::Test
    def test_add
        assert_equal 5, TheJourneyBegins.add(3, 2), 'Should return 5'
    end
end