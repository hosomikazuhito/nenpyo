class YearsController < ApplicationController
  before_action :validate_date, only: :age
  
  def index
    @years = Year.all
  end
  
  def age
    birth_year = params[:birth_year].to_i
    birth_month = params[:birth_month].to_i
    birth_day = params[:birth_day].to_i
    
    if valid_date?(birth_year, birth_month, birth_day)
      current_year = Date.today.year
      current_month = Date.today.month
      current_day = Date.today.day
      @age = current_year - birth_year
      @age -= 1 if current_month < birth_month || (current_month == birth_month && current_day < birth_day)
      
      if birth_month < 4 || (birth_month == 4 && birth_day == 1)
        start_year = birth_year + 6
      else
        start_year = birth_year + 7
      end
      
      @education_timeline = [
        { stage: '小学校', start_date: "#{start_year}年4月", end_date: "#{start_year + 6}年3月", color: 'lightcoral' },
        { stage: '中学校', start_date: "#{start_year + 6}年4月", end_date: "#{start_year + 9}年3月", color: 'lightblue' },
        { stage: '高校', start_date: "#{start_year + 9}年4月", end_date: "#{start_year + 12}年3月", color: 'lightgreen' },
        { stage: '大学', start_date: "#{start_year + 12}年4月", end_date: "#{start_year + 16}年3月", color: 'plum' }
      ]
    else
      flash[:alert] = "存在しない日付です。正しい日付を入力してください。"
      redirect_to years_path and return
    end
  end

  private
  
  def validate_date
    birth_year = params[:birth_year].to_i
    birth_month = params[:birth_month].to_i
    birth_day = params[:birth_day].to_i
    
    unless Date.valid_date?(birth_year, birth_month, birth_day)
      flash[:alert] = "存在しない日付です。正しい日付を入力してください。"
      redirect_to years_path and return
    end
  end
  
  def valid_date?(year, month, day)
    Date.valid_date?(year, month, day)
  end
  
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
