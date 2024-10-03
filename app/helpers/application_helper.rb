module ApplicationHelper
  def to_japanese_era(year)
    case year
    when 1868..1911
      "明治#{year - 1867}"
    when 1912..1925
      "大正#{year - 1911}"
    when 1926..1988
      "昭和#{year - 1925}"
    when 1989..2018
      "平成#{year - 1988}"
    else
      "令和#{year - 2018}"
    end
  end
end
