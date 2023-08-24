def featured(num)
  if num >= 9_876_543_210
    puts "There is no possible number that fulfills those requirements."
  else
    loop do
      num += 7 - (num % 7)
      break if num.digits.uniq == num.digits && num.odd?
    end
    num
  end
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987
puts
puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
