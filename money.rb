# Клас Money (завдання 8): сума з двох полів - гривні (bigint) і копійки (integer)
class Money
  include Comparable # <, <=, ==, >, >=, between? через <=>

  attr_reader :hryvnias, :kopecks

  # hryvnias - ціле довільної довжини (bigint), kopecks - integer 0..99
  def initialize(hryvnias, kopecks = 0)
    total = hryvnias * 100 + (hryvnias.negative? ? -kopecks : kopecks)
    set_total(total)
  end

  def self.from_kopecks(total)
    m = allocate
    m.send(:set_total, total)
    m
  end

  # сума в копійках, щоб рахувати без похибок дробових чисел
  def to_kopecks
    sign = @negative ? -1 : 1
    sign * (@hryvnias.abs * 100 + @kopecks)
  end

  def +(other)
    Money.from_kopecks(to_kopecks + other.to_kopecks)
  end

  def -(other)
    Money.from_kopecks(to_kopecks - other.to_kopecks)
  end

  # множення на дробове число, копійки округлюються
  def *(factor)
    Money.from_kopecks((to_kopecks * factor).round)
  end

  # ділення на дробове число
  def /(divisor)
    raise ZeroDivisionError, "ділення на нуль" if divisor.zero?
    Money.from_kopecks((to_kopecks / divisor.to_f).round)
  end

  def <=>(other)
    to_kopecks <=> other.to_kopecks
  end

  # копійки відокремлюються від гривень комою
  def to_s
    "#{'-' if @negative}#{@hryvnias.abs},#{format('%02d', @kopecks)} грн"
  end

  private

  def set_total(total)
    @negative = total.negative?
    @hryvnias = total.abs / 100 * (@negative ? -1 : 1)
    @kopecks = total.abs % 100
  end
end
