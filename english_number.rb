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

  def to_english
    return "zero" if zero?

    say
  end

  def say
    case self
    when (100..)
      number, english = NUMBERS.select { |number, _english| number <= self }.max
      [(self / number).say, english, (self % number).say].compact.join(" ")
    when (21..)
      [NUMBERS[truncate(-1)], NUMBERS[self % 10]].compact.join("-")
    else
      NUMBERS[self]
    end
  end
end

def english_number(number)
  number.to_english
end
