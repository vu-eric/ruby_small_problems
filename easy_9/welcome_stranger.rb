def greetings(arr, hsh)
  name = arr.join(" ")
  puts "=> Hello, #{name}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
end
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
