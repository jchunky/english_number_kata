NUMBERS = [
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
]

ONESPLACE = %w[
  one
  two
  three
  four
  five
  six
  seven
  eight
  nine
]
TENSPLACE = %w[
  ten
  twenty
  thirty
  forty
  fifty
  sixty
  seventy
  eighty
  ninety
]
TEENAGERS = %w[
  eleven
  twelve
  thirteen
  fourteen
  fifteen
  sixteen
  seventeen
  eighteen
  nineteen
]

def english_number(number)
  return "zero" if number == 0

  numString = ""
  left = number
  write = left / 100
  left -= write * 100
  if write > 0
    hundreds = english_number write
    numString = "#{numString}#{hundreds} hundred"
    numString = "#{numString} " if left > 0
  end
  write = left / 10
  left -= write * 10
  if write > 0
    if (write == 1) && (left > 0)
      numString += TEENAGERS[left - 1]
      left = 0
    else
      numString += TENSPLACE[write - 1]
    end
    numString = "#{numString}-" if left > 0
  end
  write = left
  left = 0
  numString += ONESPLACE[write - 1] if write > 0
  numString
end
