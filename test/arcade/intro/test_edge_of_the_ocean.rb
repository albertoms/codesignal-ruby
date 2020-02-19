require 'minitest/autorun'
require './lib/arcade/intro/edge_of_the_ocean'

class TestEdgeOfTheOcean < Minitest::Test
    def setup
        @this_world = EdgeOfTheOcean.new
    end

    def test_adjacent_elements_product
        assert_equal 21, @this_world.adjacent_elements_product([3, 6, -2, -5, 7, 3])
        assert_equal (-12), @this_world.adjacent_elements_product([-23, 4, -3, 8, -12])
        assert_equal 0, @this_world.adjacent_elements_product([1, 0, 1, 0, 1000])
    end
end