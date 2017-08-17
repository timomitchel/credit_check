# card_number = "4929735477250543"
# dealing with over 10 doubles

#two digit valid dealing with condensing/doubling
#card_number = "75"

#four digit invalid relying on condensing
#card_number = "7474"
#four digit valid dealing with condensing/doubling
#card_number = "7575"

#split_card = card_number.split(//).reverse

#card_number = "421"

#card_number = "111"

#card_number = "240"
#4 digit invalid try
#card_number = "1240"

#4 digit valid try
#card_number = "4242"

#easy 16
#card_number = "4242424242424242"

#total = card_number.to_i

#Make Method for pair of digits
#how do i get both digits from one method?
#if it returns array[a, b] I can pull out a as one thing and b as one thing

#pair_result = evaluate_pair(card_number[0..1]) # needs to return [a, b]
#first_digit = pair_result[0]
#second_digit = pair_result[1]

#multiple assignment which is the same as above but in one line
#change card_number to input in code as well as first and second digit to a and b

#first_digit = card_number[0].to_i
#second_digit = card_number[1].to_i * 2

#if second_digit > 9
 #second_digit -= 9
 #end
  #perform split on two char number and add those two numbers
  #convert to string
  #take the first digit alone and to_i it
  #take the second digit alone and to_i it
  #add numbers
  #store result in second digit
  # 5 <= 10 <= 1
  # 6 <= 12 <= 3
  # 7 <= 14 <= 5
  # 8 <= 16 <= 7
  # 9 <= 18 <= 9
  #if second_digit > 9
  # second_digit -= 9

#second_digit.to_string.split


#third_digit = card_number[2].to_i
#fourth_digit = card_number[3].to_i * 2

#if fourth_digit > 9
# fourth_digit -= 9
# end

#fifth_digit = card_number[4].to_i
#sixth_digit = card_number[5].to_i * 2

#if sixth_digit > 9
 #sixth_digit -= 9
 #end
#seventh_digit = card_number[6].to_i
#eight_digit = card_number[7].to_i * 2

#if eight_digit > 9
 #eight_digit -= 9
 #end

#ninth_digit = card_number[8].to_i
#tenth_digit = card_number[9].to_i * 2

#if tenth_digit > 9
 #tenth_digit -= 9
 #end

#eleventh_digit = card_number[10].to_i
#twelfth_digit = card_number[11].to_i * 2

#if twelfth_digit > 9
 #twelfth_digit -= 9
 #end

#thirteenth_digit = card_number[12].to_i
#fourteenth_digit = card_number[13].to_i * 2

#if fourteenth_digit > 9
# fourteenth_digit -= 9
 #end

#fifteenth_digit = card_number[14].to_i
#sixteenth_digit = card_number[15].to_i * 2

#if sixteenth_digit > 9
 #sixteenth_digit -= 9
 #end

 # first_digit, second_digit = evaluate_pair(card_number[0..1])
 # third_digit, fourth_digit = evaluate_pair(card_number[2..3])
 # fifth_digit, sixth_digit = evaluate_pair(card_number[4..5])
 # seventh_digit, eighth_digit = evaluate_pair(card_number[6..7])
 # ninth_digit, tenth_digit = evaluate_pair(card_number[8..9])
 # eleventh_digit, twelfth_digit = evaluate_pair(card_number[10..11])
 # thirteenth_digit, fourteenth_digit = evaluate_pair(card_number[12..13])
 # fifteenth_digit, sixteenth_digit = evaluate_pair(card_number[14..15])

 # if this is a collection of digits named "digits" then total = digits.reduce(:+)

 # total = first_digit + second_digit + third_digit + fourth_digit + fifth_digit +
 # sixth_digit + seventh_digit + eighth_digit + ninth_digit + tenth_digit + eleventh_digit +
 # twelfth_digit + thirteenth_digit + fourteenth_digit + fifteenth_digit + sixteenth_digit

 #0. first_digit, second_digit = evaluate_pair(card_number[0..1])
 #1. third_digit, fourth_digit = evaluate_pair(card_number[2..3])
 #2. fifth_digit, sixth_digit = evaluate_pair(card_number[4..5])
 #i. i = evaluate_pair(card_number[(i*2)..(i* 2 + 1)]

 #You can use map and with_index:

 #1,2,3,4,5,6,7].map.with_index{|v,i| i % 2 == 0 ? v : v * 2 }
 # Your Luhn Algorithm Here
 #setup array
 #iterate through array and separate the double of each second digit from the right
 #double the value of every second digit
 #if statement if result of doubling operation greater than 9 (e.g., 8 × 2 = 16),
 #then add the digits of the product (e.g., 16: 1 + 6 = 7, 18: 1 + 8 = 9)
 #take sum of all digits
 #If the total modulo 10 is equal to 0 (if the total ends in zero) then the
 #number is valid according to the Luhn formula; else it is not valid.
 #compute sum of non check-digits
 #
 #cc_numbers = [4, 9, 2, 9, 7, 3, 5, 4, 7, 7, 2, 5, 0, 5, 4, 3]

 #cc_numbers.reverse



 # Output
 ## If it is valid, print "The number is valid!"
 ## If it is invalid, print "The number is invalid!"

 # require 'pry'

card_number = "4929735477250543"
valid = false

card_number = card_number.reverse

def evaluate_pair(input)
  a = input[0].to_i
  b = input[1].to_i * 2

  if b > 9
   b = b - 9
   end

   return [a, b]
end


digits = [0,1,2,3,4,5,6,7].map do |i|
  evaluate_pair(card_number[(i*2)..(i*2 + 1)])
end

total = digits.flatten.reduce(:+)
# binding.pry


if total % 10 == 0
  valid = true
end

if valid
  puts "The number is valid"
else
  puts "The number is invalid"
end
