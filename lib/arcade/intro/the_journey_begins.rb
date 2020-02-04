class TheJourneyBegins
    def self.add(param1, param2)
        param1 + param2
    end

    def self.century_from_year(year)
        # You have to add a decimal to convert a number to float
        century = year / 100.0
        century.ceil
    end
end