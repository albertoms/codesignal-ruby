class TheJourneyBegins
    def add(param1, param2)
        param1 + param2
    end

    def century_from_year(year)
        # You have to add a decimal to convert a number to float
        century = year / 100.0
        century.ceil
    end

    def check_palindrome(inputString)
        # inputString == inputString.reverse
        strLen = inputString.length

        for i in 0..strLen/2 do
            if !(inputString[i] == inputString[(strLen - 1) - i]) then
                return false
            end
        end

        true
    end
end