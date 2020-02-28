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

    def test_shape_area
        assert_equal 5, @this_world.shape_area(2)
        assert_equal 1, @this_world.shape_area(1)
        assert_equal 199900013, @this_world.shape_area(9998)
    end

    def test_make_array_consecutive2
        assert_equal 3, @this_world.make_array_consecutive2([6, 2, 3, 8])
        assert_equal 0, @this_world.make_array_consecutive2([1])
        assert_equal 2, @this_world.make_array_consecutive2([0, 3])
    end

    def test_almost_increasing_sequence
        assert_equal false, @this_world.almost_increasing_sequence([1, 3, 2, 1])
        assert_equal true, @this_world.almost_increasing_sequence([1, 2, 5, 3, 5])
        assert_equal true, @this_world.almost_increasing_sequence([3, 5, 67, 98, 3])
    end

end