class Year
  include ActiveModel::Model

  attr_reader :seireki, :wareki

  validates :seireki, presence: true
  validates :wareki, presence: true
  validate :valid_year?

  def initialize(seireki, wareki)
    @seireki = seireki
    @wareki = wareki
  end

  def self.all
    [
      new('2024 年', '令和6年'),
      new('2023 年', '令和5年'),
      new('2022 年', '令和4年'),
      new('2021 年', '令和3年'),
      new('2020 年', '令和2年'),
      new('2019 年', '平成31年(～4月30日) 令和元年(5月1日～)'),
      new('2018 年', '平成30年'),
      new('2017 年', '平成29年'),
      new('2016 年', '平成28年'),
      new('2015 年', '平成27年'),
      new('2014 年', '平成26年'),
      new('2013 年', '平成25年'),
      new('2012 年', '平成24年'),
      new('2011 年', '平成23年'),
      new('2010 年', '平成22年'),
      new('2009 年', '平成21年'),
      new('2008 年', '平成20年'),
      new('2007 年', '平成19年'),
      new('2006 年', '平成18年'),
      new('2005 年', '平成17年'),
      new('2004 年', '平成16年'),
      new('2003 年', '平成15年'),
      new('2002 年', '平成14年'),
      new('2001 年', '平成13年'),
      new('2000 年', '平成12年'),
      new('1999 年', '平成11年'),
      new('1998 年', '平成10年'),
      new('1997 年', '平成9年'),
      new('1996 年', '平成8年'),
      new('1995 年', '平成7年'),
      new('1994 年', '平成6年'),
      new('1993 年', '平成5年'),
      new('1992 年', '平成4年'),
      new('1991 年', '平成3年'),
      new('1990 年', '平成2年'),
      new('1989 年', '昭和64年(～1月7日) 平成元年(1月8日～)'),
      new('1988 年', '昭和63年'),
      new('1987 年', '昭和62年'),
      new('1986 年', '昭和61年'),
      new('1985 年', '昭和60年'),
      new('1984 年', '昭和59年'),
      new('1983 年', '昭和58年'),
      new('1982 年', '昭和57年'),
      new('1981 年', '昭和56年'),
      new('1980 年', '昭和55年'),
      new('1979 年', '昭和54年'),
      new('1978 年', '昭和53年'),
      new('1977 年', '昭和52年'),
      new('1976 年', '昭和51年'),
      new('1975 年', '昭和50年'),
      new('1974 年', '昭和49年'),
      new('1973 年', '昭和48年'),
      new('1972 年', '昭和47年'),
      new('1971 年', '昭和46年'),
      new('1970 年', '昭和45年'),
      new('1969 年', '昭和44年'),
      new('1968 年', '昭和43年'),
      new('1967 年', '昭和42年'),
      new('1966 年', '昭和41年'),
      new('1965 年', '昭和40年'),
      new('1964 年', '昭和39年'),
      new('1963 年', '昭和38年'),
      new('1962 年', '昭和37年'),
      new('1961 年', '昭和36年'),
      new('1960 年', '昭和35年'),
      new('1959 年', '昭和34年'),
      new('1958 年', '昭和33年'),
      new('1957 年', '昭和32年'),
      new('1956 年', '昭和31年'),
      new('1955 年', '昭和30年'),
      new('1954 年', '昭和29年'),
      new('1953 年', '昭和28年'),
      new('1952 年', '昭和27年'),
      new('1951 年', '昭和26年'),
      new('1950 年', '昭和25年'),
      new('1949 年', '昭和24年'),
      new('1948 年', '昭和23年'),
      new('1947 年', '昭和22年'),
      new('1946 年', '昭和21年'),
      new('1945 年', '昭和20年'),
      new('1944 年', '昭和19年'),
      new('1943 年', '昭和18年'),
      new('1942 年', '昭和17年'),
      new('1941 年', '昭和16年'),
      new('1940 年', '昭和15年'),
      new('1939 年', '昭和14年'),
      new('1938 年', '昭和13年'),
      new('1937 年', '昭和12年'),
      new('1936 年', '昭和11年'),
      new('1935 年', '昭和10年'),
      new('1934 年', '昭和9年'),
      new('1933 年', '昭和8年'),
      new('1932 年', '昭和7年'),
      new('1931 年', '昭和6年'),
      new('1930 年', '昭和5年'),
      new('1929 年', '昭和4年'),
      new('1928 年', '昭和3年'),
      new('1927 年', '昭和2年'),
      new('1926 年', '大正15年(～12月25日) 昭和元年(12月25日～)'),
      new('1925 年', '大正14年'),
      new('1924 年', '大正13年'),
      new('1923 年', '大正12年'),
      new('1922 年', '大正11年'),
      new('1921 年', '大正10年'),
      new('1920 年', '大正9年'),
      new('1919 年', '大正8年'),
      new('1918 年', '大正7年'),
      new('1917 年', '大正6年'),
      new('1916 年', '大正5年'),
      new('1915 年', '大正4年'),
      new('1914 年', '大正3年'),
      new('1913 年', '大正2年'),
      new('1912 年', '明治45年(～7月30日) 大正元年(7月30日～)'),
      new('1911 年', '明治44年'),
      new('1910 年', '明治43年'),
      new('1909 年', '明治42年'),
      new('1908 年', '明治41年'),
      new('1907 年', '明治40年'),
      new('1906 年', '明治39年'),
      new('1905 年', '明治38年'),
      new('1904 年', '明治37年'),
      new('1903 年', '明治36年'),
      new('1902 年', '明治35年'),
      new('1901 年', '明治34年'),
      new('1900 年', '明治33年'),
      new('1899 年', '明治32年'),
      new('1898 年', '明治31年'),
      new('1897 年', '明治30年'),
      new('1896 年', '明治29年'),
      new('1895 年', '明治28年'),
      new('1894 年', '明治27年'),
      new('1893 年', '明治26年'),
      new('1892 年', '明治25年'),
      new('1891 年', '明治24年'),
      new('1890 年', '明治23年'),
      new('1889 年', '明治22年'),
      new('1888 年', '明治21年'),
      new('1887 年', '明治20年'),
      new('1886 年', '明治19年'),
      new('1885 年', '明治18年'),
      new('1884 年', '明治17年'),
      new('1883 年', '明治16年'),
      new('1882 年', '明治15年'),
      new('1881 年', '明治14年'),
      new('1880 年', '明治13年'),
      new('1879 年', '明治12年'),
      new('1878 年', '明治11年'),
      new('1877 年', '明治10年'),
      new('1876 年', '明治9年'),
      new('1875 年', '明治8年'),
      new('1874 年', '明治7年'),
      new('1873 年', '明治6年'),
      new('1872 年', '明治5年'),
      new('1871 年', '明治4年'),
      new('1870 年', '明治3年'),
      new('1869 年', '明治2年'),
      new('1868 年', '慶応4年(～9月8日) 明治元年(9月8日～)')
  ]
  end
  private

  def valid_year?
    unless Year.all.map(&:seireki).include?(seireki)
      errors.add(:seireki, 'は無効な年です')
    end
  end
end