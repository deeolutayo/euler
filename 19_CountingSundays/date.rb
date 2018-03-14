class Date

  DAYS = %w(Saturday Sunday Monday Tuesday Wednesday Thursday Friday)

  def initialize(day_of_month, month, year)
    @day_of_month = day_of_month
    @month = month
    @year = year
  end

  def sunday?
    day_of_week.eql?('Sunday')
  end

  def day_of_week
    day_index = zellers_congruence
    DAYS[day_index]
  end

  private

  def zellers_congruence
    (@day_of_month + days_of_month_adjustment + effective_year + year_of_century_adjustment) % 7
  end

  def days_of_month_adjustment
    (13 * (effective_month + 1)) / 5
  end

  def year_of_century_adjustment
    (effective_year / 4) - (effective_year / 100) + (effective_year / 400)
  end

  def effective_month
    @month < 3 ? @month + 12 : @month
  end

  def effective_year
    @effective_year ||= @month < 3 ? @year - 1 : @year
  end

end