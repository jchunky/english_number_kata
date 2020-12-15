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
  1_000_000 => "million",
  1_000_000_000 => "billion",
  1_000_000_000_000 => "trillion",
}

def english_number(n)
  return "zero" if n.zero?

  say(n)
end

def say(n)
  case n
  when (100..)
    i, text = NUMBERS.select { |i| i <= n }.max
    [say(n / i), text, say(n % i)].compact.join(" ")
  when (21..)
    [NUMBERS[n.truncate(-1)], NUMBERS[n % 10]].join("-")
  else
    NUMBERS[n]
  end
end
