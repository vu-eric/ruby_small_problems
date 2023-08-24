def staggered_case(str)
  result = ''
  need_upper = true
  str.chars.each do |char|
    if char =~ /[^A-Za-z]/
      result << char
      next
    elsif need_upper
      result << char.upcase
    else
      result << char.downcase
    end
    need_upper = !need_upper
  end
  result
end
puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
