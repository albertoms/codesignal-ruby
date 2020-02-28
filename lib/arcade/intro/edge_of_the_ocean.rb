class EdgeOfTheOcean
    def adjacent_elements_product(inputArray)
        largest = -1000 * 1000

        for i in 0..(inputArray.size - 2) do
            this_product = inputArray[i] * inputArray[i + 1]
    
            if this_product > largest then
                largest = this_product
            end
        end
    
        return largest
    end

    def shape_area(n)
        return n ** 2 + (n-1) ** 2
    end

    def make_array_consecutive2(statues)
        statues.max - statues.min - (statues.size - 1)
    end

    # Rule:
    # To obtain a strictly increasing sequence by removing
    # no more than one element from the array.
    def almost_increasing_sequence(sequence)
        ints_to_remove = 0

        for i in 0..(sequence.size - 2) do
            cur_int = sequence[i]
            next_int = sequence[i + 1]
            
            # current integer should be removed to meet the rule
            if cur_int >= next_int
                ints_to_remove += 1
            end
            
            # make sure that by removing the current integer
            # previous and 2nd next items would meet the rule
            # When sequence = [40, 50, 60, 10, 20, 30] and cur_int = 60:
            if  i > 0 &&
                (i + 2) < sequence.size &&
                sequence[i - 1] >= next_int && # 50 >= 10
                cur_int >= sequence[i + 2] # 60 >= 20
            then
                ints_to_remove += 1
            end

            if ints_to_remove > 1
                break
            end
        end
        
        return ints_to_remove < 2
    end

end