class EducationCalculator
  def initialize(age)
    @age = age
    @current_year = Date.today.year
  end

  def education_years
    start_year = @current_year - @age + 6 # 6歳から小学校開始
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
        years << { seireki: year, wareki: wareki, level: level, start_month: 4, end_month: 3 }
      end
      start_year += duration
    end
    years
  end

  private

  def wareki_class(year)
    case year
    when 2019..Float::INFINITY
      "令和#{year - 2018}"
    when 1989..2018
      "平成#{year - 1988}"
    when 1926..1988
      "昭和#{year - 1925}"
    when 1912..1925
      "大正#{year - 1911}"
    when 1868..1912
      "明治#{year - 1867}"
    else
      "不明"
    end
  end
end
