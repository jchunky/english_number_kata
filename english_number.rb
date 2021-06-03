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

def english_number(n)
  return "zero" if n == 0

  say(n)
end

def say(n)
  return if n == 0

  case n
  when (..20)
    NUMBERS[n]
  when (..99)
    [NUMBERS[n.truncate(-1)], NUMBERS[n % 10]].compact.join("-")
  else
    number, word = NUMBERS.select { |number, _| number <= n }.max
    [say(n / number), word, say(n % number)].compact.join(" ")
  end
end
