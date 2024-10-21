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
      new('1868 年', '慶応4年(～9月8日) 明治元年(9月8日～)'),
      new('1867 年', '慶応3年'),
      new('1866 年', '慶応2年'),
      new('1865 年', '慶応1年'),
      new('1864 年', '元治1年 (幕末)'),
      new('1863 年', '文久3年 (幕末)'),
      new('1862 年', '文久2年 (幕末)'),
      new('1861 年', '文久1年 (幕末)'),
      new('1860 年', '万延1年 (幕末)'),
      new('1859 年', '安政6年 (幕末)'),
      new('1858 年', '安政5年 (幕末)'),
      new('1857 年', '安政4年 (幕末)'),
      new('1856 年', '安政3年 (幕末)'),
      new('1855 年', '安政2年 (幕末)'),
      new('1854 年', '安政1年 (幕末)'),
      new('1853 年', '嘉永6年 (幕末)'),
      new('1852 年', '嘉永5年 (幕末)'),
      new('1851 年', '嘉永4年 (幕末)'),
      new('1850 年', '嘉永3年 (幕末)'),
      new('1849 年', '嘉永2年 (幕末)'),
      new('1848 年', '嘉永1年 (幕末)'),
      new('1847 年', '弘化4年 (幕末)'),
      new('1846 年', '弘化3年 (幕末)'),
      new('1845 年', '弘化2年 (幕末)'),
      new('1844 年', '弘化1年 (幕末)'),
      new('1843 年', '天保14年 (幕末)'),
      new('1842 年', '天保13年 (幕末)'),
      new('1841 年', '天保12年 (幕末)'),
      new('1840 年', '天保11年 (幕末)'),
      new('1839 年', '天保10年 (幕末)'),
      new('1838 年', '天保9年 (幕末)'),
      new('1837 年', '天保8年 (幕末)'),
      new('1836 年', '天保7年 (幕末)'),
      new('1835 年', '天保6年 (幕末)'),
      new('1834 年', '天保5年 (幕末)'),
      new('1833 年', '天保4年 (幕末)'),
      new('1832 年', '天保3年 (幕末)'),
      new('1831 年', '天保2年 (幕末)'),
      new('1830 年', '天保1年 (幕末)'),
      new('1829 年', '文政12年 (江戸時代)'),
      new('1828 年', '文政11年 (江戸時代)'),
      new('1827 年', '文政10年 (江戸時代)'),
      new('1826 年', '文政9年 (江戸時代)'),
      new('1825 年', '文政8年 (江戸時代)'),
      new('1824 年', '文政7年 (江戸時代)'),
      new('1823 年', '文政6年 (江戸時代)'),
      new('1822 年', '文政5年 (江戸時代)'),
      new('1821 年', '文政4年 (江戸時代)'),
      new('1820 年', '文政3年 (江戸時代)'),
      new('1819 年', '文政2年 (江戸時代)'),
      new('1818 年', '文政1年 (江戸時代)'),
      new('1817 年', '文化14年 (江戸時代)'),
      new('1816 年', '文化13年 (江戸時代)'),
      new('1815 年', '文化12年 (江戸時代)'),
      new('1814 年', '文化11年 (江戸時代)'),
      new('1813 年', '文化10年 (江戸時代)'),
      new('1812 年', '文化9年 (江戸時代)'),
      new('1811 年', '文化8年 (江戸時代)'),
      new('1810 年', '文化7年 (江戸時代)'),
      new('1809 年', '文化6年 (江戸時代)'),
      new('1808 年', '文化5年 (江戸時代)'),
      new('1807 年', '文化4年 (江戸時代)'),
      new('1806 年', '文化3年 (江戸時代)'),
      new('1805 年', '文化2年 (江戸時代)'),
      new('1804 年', '文化1年 (江戸時代)'),
      new('1803 年', '享和3年 (江戸時代)'),
      new('1802 年', '享和2年 (江戸時代)'),
      new('1801 年', '享和1年 (江戸時代)'),
      new('1800 年', '寛政12年 (江戸時代)'),
      new('1799 年', '寛政11年 (江戸時代)'),
      new('1798 年', '寛政10年 (江戸時代)'),
      new('1797 年', '寛政9年 (江戸時代)'),
      new('1796 年', '寛政8年 (江戸時代)'),
      new('1795 年', '寛政7年 (江戸時代)'),
      new('1794 年', '寛政6年 (江戸時代)'),
      new('1793 年', '寛政5年 (江戸時代)'),
      new('1792 年', '寛政4年 (江戸時代)'),
      new('1791 年', '寛政3年 (江戸時代)'),
      new('1790 年', '寛政2年 (江戸時代)'),
      new('1789 年', '寛政1年 (江戸時代)'),
      new('1788 年', '天明8年 (江戸時代)'),
      new('1787 年', '天明7年 (江戸時代)'),
      new('1786 年', '天明6年 (江戸時代)'),
      new('1785 年', '天明5年 (江戸時代)'),
      new('1784 年', '天明4年 (江戸時代)'),
      new('1783 年', '天明3年 (江戸時代)'),
      new('1782 年', '天明2年 (江戸時代)'),
      new('1781 年', '天明1年 (江戸時代)'),
      new('1780 年', '安永9年 (江戸時代)'),
      new('1779 年', '安永8年 (江戸時代)'),
      new('1778 年', '安永7年 (江戸時代)'),
      new('1777 年', '安永6年 (江戸時代)'),
      new('1776 年', '安永5年 (江戸時代)'),
      new('1775 年', '安永4年 (江戸時代)'),
      new('1774 年', '安永3年 (江戸時代)'),
      new('1773 年', '安永2年 (江戸時代)'),
      new('1772 年', '安永1年 (江戸時代)'),
      new('1771 年', '明和8年 (江戸時代)'),
      new('1770 年', '明和7年 (江戸時代)'),
      new('1769 年', '明和6年 (江戸時代)'),
      new('1768 年', '明和5年 (江戸時代)'),
      new('1767 年', '明和4年 (江戸時代)'),
      new('1766 年', '明和3年 (江戸時代)'),
      new('1765 年', '明和2年 (江戸時代)'),
      new('1764 年', '明和1年 (江戸時代)'),
      new('1763 年', '寛延5年 (江戸時代)'),
      new('1762 年', '寛延4年 (江戸時代)'),
      new('1761 年', '寛延3年 (江戸時代)'),
      new('1760 年', '寛延2年 (江戸時代)'),
      new('1759 年', '寛延1年 (江戸時代)'),
      new('1758 年', '宝暦8年 (江戸時代)'),
      new('1757 年', '宝暦7年 (江戸時代)'),
      new('1756 年', '宝暦6年 (江戸時代)'),
      new('1755 年', '宝暦5年 (江戸時代)'),
      new('1754 年', '宝暦4年 (江戸時代)'),
      new('1753 年', '宝暦3年 (江戸時代)'),
      new('1752 年', '宝暦2年 (江戸時代)'),
      new('1751 年', '宝暦1年 (江戸時代)'),
      new('1750 年', '寛永7年 (江戸時代)'),
      new('1749 年', '寛永6年 (江戸時代)'),
      new('1748 年', '寛永5年 (江戸時代)'),
      new('1747 年', '寛永4年 (江戸時代)'),
      new('1746 年', '寛永3年 (江戸時代)'),
      new('1745 年', '寛永2年 (江戸時代)'),
      new('1744 年', '寛永1年 (江戸時代)'),
      new('1743 年', '正保4年 (江戸時代)'),
      new('1742 年', '正保3年 (江戸時代)'),
      new('1741 年', '正保2年 (江戸時代)'),
      new('1740 年', '正保1年 (江戸時代)'),
      new('1739 年', '寛永19年 (江戸時代)'),
      new('1738 年', '寛永18年 (江戸時代)'),
      new('1737 年', '寛永17年 (江戸時代)'),
      new('1736 年', '寛永16年 (江戸時代)'),
      new('1735 年', '寛永15年 (江戸時代)'),
      new('1734 年', '寛永14年 (江戸時代)'),
      new('1733 年', '寛永13年 (江戸時代)'),
      new('1732 年', '寛永12年 (江戸時代)'),
      new('1731 年', '寛永11年 (江戸時代)'),
      new('1730 年', '寛永10年 (江戸時代)'),
      new('1729 年', '寛永9年 (江戸時代)'),
      new('1728 年', '寛永8年 (江戸時代)'),
      new('1727 年', '寛永7年 (江戸時代)'),
      new('1726 年', '寛永6年 (江戸時代)'),
      new('1725 年', '寛永5年 (江戸時代)'),
      new('1724 年', '寛永4年 (江戸時代)'),
      new('1723 年', '寛永3年 (江戸時代)'),
      new('1722 年', '寛永2年 (江戸時代)'),
      new('1721 年', '寛永1年 (江戸時代)'),
      new('1720 年', '元和9年 (江戸時代)'),
      new('1719 年', '元和8年 (江戸時代)'),
      new('1718 年', '元和7年 (江戸時代)'),
      new('1717 年', '元和6年 (江戸時代)'),
      new('1716 年', '元和5年 (江戸時代)'),
      new('1715 年', '元和4年 (江戸時代)'),
      new('1714 年', '元和3年 (江戸時代)'),
      new('1713 年', '元和2年 (江戸時代)'),
      new('1712 年', '元和1年 (江戸時代)'),
      new('1711 年', '慶長16年 (江戸時代)'),
      new('1710 年', '慶長15年 (江戸時代)'),
      new('1709 年', '慶長14年 (江戸時代)'),
      new('1708 年', '慶長13年 (江戸時代)'),
      new('1707 年', '慶長12年 (江戸時代)'),
      new('1706 年', '慶長11年 (江戸時代)'),
      new('1705 年', '慶長10年 (江戸時代)'),
      new('1704 年', '慶長9年 (江戸時代)'),
      new('1703 年', '慶長8年 (江戸時代)'),
      new('1702 年', '慶長7年 (江戸時代)'),
      new('1701 年', '慶長6年 (江戸時代)'),
      new('1700 年', '慶長5年 (江戸時代)'),
      new('1699 年', '慶長4年 (江戸時代)'),
      new('1698 年', '慶長3年 (江戸時代)'),
      new('1697 年', '慶長2年 (江戸時代)'),
      new('1696 年', '慶長1年 (江戸時代)'),
      new('1695 年', '明暦元年 (江戸時代)'),
      new('1694 年', '明暦10年 (江戸時代)'),
      new('1693 年', '明暦9年 (江戸時代)'),
      new('1692 年', '明暦8年 (江戸時代)'),
      new('1691 年', '明暦7年 (江戸時代)'),
      new('1690 年', '明暦6年 (江戸時代)'),
      new('1689 年', '明暦5年 (江戸時代)'),
      new('1688 年', '明暦4年 (江戸時代)'),
      new('1687 年', '明暦3年 (江戸時代)'),
      new('1686 年', '明暦2年 (江戸時代)'),
      new('1685 年', '明暦1年 (江戸時代)'),
      new('1684 年', '寛文4年 (江戸時代)'),
      new('1683 年', '寛文3年 (江戸時代)'),
      new('1682 年', '寛文2年 (江戸時代)'),
      new('1681 年', '寛文1年 (江戸時代)'),
      new('1680 年', '延宝8年 (江戸時代)'),
      new('1679 年', '延宝7年 (江戸時代)'),
      new('1678 年', '延宝6年 (江戸時代)'),
      new('1677 年', '延宝5年 (江戸時代)'),
      new('1676 年', '延宝4年 (江戸時代)'),
      new('1675 年', '延宝3年 (江戸時代)'),
      new('1674 年', '延宝2年 (江戸時代)'),
      new('1673 年', '延宝1年 (江戸時代)'),
      new('1672 年', '寛文12年 (江戸時代)'),
      new('1671 年', '寛文11年 (江戸時代)'),
      new('1670 年', '寛文10年 (江戸時代)'),
      new('1669 年', '寛文9年 (江戸時代)'),
      new('1668 年', '寛文8年 (江戸時代)'),
      new('1667 年', '寛文7年 (江戸時代)'),
      new('1666 年', '寛文6年 (江戸時代)'),
      new('1665 年', '寛文5年 (江戸時代)'),
      new('1664 年', '寛文4年 (江戸時代)'),
      new('1663 年', '寛文3年 (江戸時代)'),
      new('1662 年', '寛文2年 (江戸時代)'),
      new('1661 年', '寛文1年 (江戸時代)'),
      new('1660 年', '万治元年 (江戸時代)'),
      new('1659 年', '万治10年 (江戸時代)'),
      new('1658 年', '万治9年 (江戸時代)'),
      new('1657 年', '万治8年 (江戸時代)'),
      new('1656 年', '万治7年 (江戸時代)'),
      new('1655 年', '万治6年 (江戸時代)'),
      new('1654 年', '万治5年 (江戸時代)'),
      new('1653 年', '万治4年 (江戸時代)'),
      new('1652 年', '万治3年 (江戸時代)'),
      new('1651 年', '万治2年 (江戸時代)'),
      new('1650 年', '万治1年 (江戸時代)'),
      new('1649 年', '寛永1年 (江戸時代)'),
      new('1648 年', '慶安元年 (江戸時代)'),
      new('1647 年', '慶安10年 (江戸時代)'),
      new('1646 年', '慶安9年 (江戸時代)'),
      new('1645 年', '慶安8年 (江戸時代)'),
      new('1644 年', '慶安7年 (江戸時代)'),
      new('1643 年', '慶安6年 (江戸時代)'),
      new('1642 年', '慶安5年 (江戸時代)'),
      new('1641 年', '慶安4年 (江戸時代)'),
      new('1640 年', '慶安3年 (江戸時代)'),
      new('1639 年', '慶安2年 (江戸時代)'),
      new('1638 年', '慶安元年 (江戸時代)'),
      new('1637 年', '寛永17年 (江戸時代)'),
      new('1636 年', '寛永16年 (江戸時代)'),
      new('1635 年', '寛永15年 (江戸時代)'),
      new('1634 年', '寛永14年 (江戸時代)'),
      new('1633 年', '寛永13年 (江戸時代)'),
      new('1632 年', '寛永12年 (江戸時代)'),
      new('1631 年', '寛永11年 (江戸時代)'),
      new('1630 年', '寛永10年 (江戸時代)'),
      new('1629 年', '寛永9年 (江戸時代)'),
      new('1628 年', '寛永8年 (江戸時代)'),
      new('1627 年', '寛永7年 (江戸時代)'),
      new('1626 年', '寛永6年 (江戸時代)'),
      new('1625 年', '寛永5年 (江戸時代)'),
      new('1624 年', '寛永4年 (江戸時代)'),
      new('1623 年', '寛永3年 (江戸時代)'),
      new('1622 年', '寛永2年 (江戸時代)'),
      new('1621 年', '寛永1年 (江戸時代)'),
      new('1620 年', '元和6年 (江戸時代)'),
      new('1619 年', '元和5年 (江戸時代)'),
      new('1618 年', '元和4年 (江戸時代)'),
      new('1617 年', '元和3年 (江戸時代)'),
      new('1616 年', '元和2年 (江戸時代)'),
      new('1615 年', '元和元年 (江戸時代)'),
      new('1614 年', '天正12年 (戦国時代)'),
      new('1613 年', '天正11年 (戦国時代)'),
      new('1612 年', '天正10年 (戦国時代)'),
      new('1611 年', '天正9年 (戦国時代)'),
      new('1610 年', '天正8年 (戦国時代)'),
      new('1609 年', '天正7年 (戦国時代)'),
      new('1608 年', '天正6年 (戦国時代)'),
      new('1607 年', '天正5年 (戦国時代)'),
      new('1606 年', '天正4年 (戦国時代)'),
      new('1605 年', '天正3年 (戦国時代)'),
      new('1604 年', '天正2年 (戦国時代)'),
      new('1603 年', '天正1年 (戦国時代)'),
      new('1602 年', '慶長元年 (江戸時代)'),
      new('1601 年', '慶長元年 (江戸時代)'),
      new('1600 年', '慶長元年 (江戸時代)'),
      new('1599 年', '慶長元年 (江戸時代)'),
      new('1598 年', '慶長元年 (江戸時代)'),
      new('1597 年', '慶長元年 (江戸時代)'),
      new('1596 年', '慶長元年 (江戸時代)'),
      new('1595 年', '慶長元年 (江戸時代)'),
      new('1594 年', '慶長元年 (江戸時代)'),
      new('1593 年', '慶長元年 (江戸時代)'),
      new('1592 年', '慶長元年 (江戸時代)'),
      new('1591 年', '天正19年 (戦国時代)'),
      new('1590 年', '天正18年 (戦国時代)'),
      new('1589 年', '天正17年 (戦国時代)'),
      new('1588 年', '天正16年 (戦国時代)'),
      new('1587 年', '天正15年 (戦国時代)'),
      new('1586 年', '天正14年 (戦国時代)'),
      new('1585 年', '天正13年 (戦国時代)'),
      new('1584 年', '天正12年 (戦国時代)'),
      new('1583 年', '天正11年 (戦国時代)'),
      new('1582 年', '天正10年 (戦国時代)'),
      new('1581 年', '天正9年 (戦国時代)'),
      new('1580 年', '天正8年 (戦国時代)'),
      new('1579 年', '天正7年 (戦国時代)'),
      new('1578 年', '天正6年 (戦国時代)')
  ]
  end
  private

  def valid_year?
    unless Year.all.map(&:seireki).include?(seireki)
      errors.add(:seireki, 'は無効な年です')
    end
  end
end