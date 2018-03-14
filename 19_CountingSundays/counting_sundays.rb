require_relative './date'

class CountingSundays

  def self.number_of_first_sundays(start_year, end_year)
    start_year.upto(end_year).sum do |year|
      1.upto(12).count do |month|
        Date.new(1, month, year).sunday?
      end
    end
  end

end