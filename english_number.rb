NUMBERS = {
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen',
  20 => 'twenty',
  30 => 'thirty',
  40 => 'forty',
  50 => 'fifty',
  60 => 'sixty',
  70 => 'seventy',
  80 => 'eighty',
  90 => 'ninety',
  100 => 'hundred',
  10 ** 3 => 'thousand',
  10 ** 6 => 'million',
  10 ** 9 => 'billion',
  10 ** 12 => 'trillion',
}

def english_number(n)
  return 'zero' if n.zero?

  return say(n)
end

def say(n)
  case n
  when (100..)
    factor, word = NUMBERS.select { |f, w| f <= n }.max
    [say(n / factor), word, say(n % factor)].compact.join(" ")
  when (20..)
    [NUMBERS[n.truncate(-1)], NUMBERS[n % 10]].compact.join("-")
  else
    NUMBERS[n]
  end
end
