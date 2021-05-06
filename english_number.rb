class Integer
  NUMBERS = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
    100 => "hundred",
    1000 => "thousand",
    10**6 => "million",
    10**9 => "billion",
    10**12 => "trillion",
  }

  def english(zero = "zero")
    return zero if zero?

    case self
    when (100..)
      n, english = NUMBERS.select { |n, _english| n <= self }.max
      [(self / n).english(nil), english, (self % n).english(nil)].compact.join(" ")
    when (21..)
      [NUMBERS[truncate(-1)], NUMBERS[self % 10]].compact.join("-")
    else
      NUMBERS[self]
    end
  end
end

def english_number(number)
  number.english
end
