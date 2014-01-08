# Function definitions first
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end

def get_number
  gets.to_f
end

def first_number
  puts "First number: "
  get_number
end

def second_number
  puts "Second number: "
  get_number
end
 
def basic_calc
  # ask the user which operation they want to perform
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase


 result = case operation
  when "a"
    first_number + second_number
  when "s"
    first_number - second_number
  when "m"
    first_number * second_number
  when "d"
    first_number / second_number
  else
   menu  
  end
  puts result.round(2)
  gets

end

def advanced_calc

  print "(p)ower, (s)qrt: "
  operation = gets.chomp.downcase

  result =  case operation
  when "p"
    first_number ** second_number
  when "s"
    first_number ** 0.5
  end

  puts result.round(2)
  gets

end
 
 
# run the app...
 
response = menu
 
while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  end
 

  response = menu
end