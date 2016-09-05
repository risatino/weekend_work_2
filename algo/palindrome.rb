# Complete the method called palindrome? which should accept a string as a parameter and return a boolean indicated whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar

## option 1

# def palindrome?(string)
# reversed_string = string.reverse
#   if string == reversed_string
#     return true
#   else
#     return false
#   end
# end

## puts palindrome?('evil live')

## option 2 - if there is a space and not using the .reverse

# iterate over the array
  # check if first item in string is equal to last item in string
  # move to the second item and second to last item

def palindrome?(string)
  string = string.gsub(" ", "")
  length = string.length
  # puts string.inspect
  palindrome = true
  (length/2 + 1).times do |count|
  # puts "#{count} - #{length - count - 1}"
    if string[count] != string[length - count - 1]
      palindrome = false
    end
  end
  return palindrome
end

## puts palindrome?('abca')

# Driver code - don't touch anything below this line.
puts "TESTING palindrome?"
puts

result = palindrome?("racecar")

puts "Your method returned:"
p result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = palindrome?("wazzzzup")

puts "Your method returned:"
p result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end