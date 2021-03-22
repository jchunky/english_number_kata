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

def english_number(number)
  return "zero" if number == 0

  say(number)
end

def say(n)
  case n
  when (100..)
    i, word = NUMBERS.select { |i| i <= n }.max
    [say(n / i), word, say(n % i)].compact.join(" ")
  when (21..)
    [NUMBERS[n.truncate(-1)], NUMBERS[n % 10]].compact.join("-")
  else
    NUMBERS[n]
  end
end
