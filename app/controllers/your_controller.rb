class YourController < ApplicationController
  def education_years(age)
    current_year = Date.today.year
    start_year = current_year - age
    education_periods = {
      "小学校" => 6,
      "中学校" => 3,
      "高校" => 3,
      "大学" => 4
    }
    years = []
    education_periods.each do |level, duration|
      duration.times do |i|
        year = start_year + i
        wareki = wareki_class(year)
        years << { seireki: year, wareki: wareki, level: level }
      end
      start_year += duration
    end
    years
  end
end