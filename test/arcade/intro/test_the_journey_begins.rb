require 'minitest/autorun'
require_relative '../../../lib/arcade/intro/the_journey_begins'

class TheJourneyBeginsTest < Minitest::Test
    def test_add
        assert_equal 3, TheJourneyBegins.add(1, 2)
        assert_equal (-37), TheJourneyBegins.add(2, -39)
        assert_equal (-2000), TheJourneyBegins.add(-1000, -1000)
    end
end