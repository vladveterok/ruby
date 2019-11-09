# frozen_string_literal: true

def english_numbers(num)
  if num < 0
    return 'Put a positive number, kiddo'
  elsif num == 0
    return 'zero, null, nil, nada, zip, goose egg'
  end

  num_string = ''

  ones_array = %w[one two three four five six seven eight nine]
  tens_array = %w[ten twenty thirty forty fifty sixty seventy eighty ninety]
  teenagers_array = %w[eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]

  left = num

  zillions = [
    ['hundred', 2],
    ['thousand', 3],
    ['million', 6],
    ['billion', 9],
    ['trillion', 12],
    ['quadrillion', 15],
    ['quintillion', 18],
    ['sextillion', 21],
    ['septillion', 24],
    ['octillion', 27],
    ['nonillion', 30],
    ['decillion', 33],
    ['undecillion', 36],
    ['duodecillion', 39],
    ['tredecillion', 42],
    ['quattuordecillion', 45],
    ['quindecillion', 48],
    ['sexdecillion', 51],
    ['septendecillion', 54],
    ['octodecillion', 57],
    ['novemdecillion', 60],
    ['vigintillion', 63],
    ['googol', 100]
  ]

  until zillions.empty?
    zill_pair = zillions.pop
    zill_name = zill_pair[0]
    zill_base = 10**zill_pair[1]

    write = left / zill_base
    left -= write * zill_base

    next unless write > 0

    prefix = english_numbers write
    num_string += prefix + ' ' + zill_name
    num_string += ' ' if left > 0
  end

  write = left / 10
  left -= write * 10
  if write > 0
    if write == 1 && left > 0
      num_string += teenagers_array[left - 1]
      left = 0
    else
      num_string += tens_array[write - 1]
      num_string += '-' if left > 0
    end
  end

  write = left
  left = 0
  num_string += ones_array[write - 1] if write > 0
  num_string
end

# puts english_numbers 0

puts 'Hey! Put a whole positive number without breaks and I will englisize it :)'
loop do
  input = gets.chomp
  if input == ''
    break
  else
    puts english_numbers input.to_i
  end
end
