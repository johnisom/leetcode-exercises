VALUES = { 'I' => 1,
           'V' => 5,
           'X' => 10,
           'L' => 50,
           'C' => 100,
           'D' => 500,
           'M' => 1000 }.freeze

def roman_gt(a, b)
  return false if a.nil? || b.nil?

  VALUES[a] > VALUES[b]
end

def roman_to_int(numerals)
  numeric_value = 0
  previous_numeral = nil

  numerals.each_char do |numeral|
    if roman_gt(numeral, previous_numeral)
      numeric_value -= 2 * VALUES[previous_numeral]
    end

    previous_numeral = numeral
    numeric_value += VALUES[numeral]
  end

  numeric_value
end
