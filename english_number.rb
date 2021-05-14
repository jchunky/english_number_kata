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
}

def say(number)
  return nil if number.zero?

  case number
  when (..20)
    NUMBERS[number]
  when (..99)
    [NUMBERS[number.truncate(-1)], NUMBERS[number % 10]].compact.join("-")
  else
    n, word = NUMBERS.select { |n, _word| n <= number }.max
    [say(number / n), word, say(number % n)].compact.join(" ")
  end
end

def english_number(number)
  return "zero" if number.zero?

  say(number)
end
