class EdgeOfTheOcean
    def adjacent_elements_product(inputArray)
        largest = -1000 * 1000;

        for i in 0..(inputArray.size - 2) do
            this_product = inputArray[i] * inputArray[i + 1]
    
            if this_product > largest then
                largest = this_product
            end
        end
    
        return largest
    end
end