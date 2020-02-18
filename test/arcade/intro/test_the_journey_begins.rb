require 'minitest/autorun'
require_relative '../../../lib/arcade/intro/the_journey_begins'

class TheJourneyBeginsTest < Minitest::Test
    def setup
        @this_world = TheJourneyBegins.new
    end

    def test_add
        assert_equal 3, @this_world.add(1, 2)
        assert_equal (-37), @this_world.add(2, -39)
        assert_equal (-2000), @this_world.add(-1000, -1000)
    end

    def test_century_from_year
        assert_equal 20, @this_world.century_from_year(1905)
        assert_equal 17, @this_world.century_from_year(1700)
        assert_equal 1, @this_world.century_from_year(8)
    end

    def test_check_palindrome
        assert_equal true, @this_world.check_palindrome("aabaa")
        assert_equal false, @this_world.check_palindrome("zzzazzazz")
        assert_equal true, @this_world.check_palindrome("z")
    end
end