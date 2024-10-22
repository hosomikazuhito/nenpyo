class YourModel
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
      "大学" => 4,
      "短大" => 2 # 短大の期間を追加
    }
    years = []
    education_periods.each do |level, duration|
      start_date = start_year
      end_date = start_year + duration - 1
      years << {
        level: level,
        start_date: start_date,
        end_date: end_date,
        seireki: {
          start: start_date,
          end: end_date
        },
        wareki: {
          start: to_japanese_era(start_date),
          end: to_japanese_era(end_date)
        }
      }
      start_year += duration
    end
    years
  end

  private

  def to_japanese_era(year)
    case year
    when 2019..Float::INFINITY
      "令和#{year - 2018}年"
    when 1989..2018
      "平成#{year - 1988}年"
    when 1926..1988
      "昭和#{year - 1925}年"
    when 1912..1925
      "大正#{year - 1911}年"
    when 1868..1912
      "明治#{year - 1867}年"
    else
      "不明"
    end
  end
end
