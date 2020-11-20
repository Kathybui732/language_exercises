class FizzBuzz

  def initialize
    @range = nil
  end

  def play
    user_input
    puts fizz_buzz_generator(@range)
  end

  def user_input
    puts "Please enter a positive integer between 0 and 1000000 for fizzbuzz to run!"
    until !@range.nil? do
      print "Number: "
      input = gets.chomp
      error_message(input)
    end
  end

  def error_message(input)
    if input.start_with?('-') || input.to_i > 1000000
      puts 'Please enter a POSTIVE number between 0 and 1000000'
    elsif !input.nil? && input.delete('0123456789').empty?
      @range = input.to_i
      puts "Generating FizzBuzz to #{@range}!"
    else
      puts 'Please use numeric values only'
    end
  end

  def fizz_buzz_generator(number)
    (1..number).map do |number|
      if number % 5 == 0 && number % 3 == 0
        "fizzbuzz"
      elsif number % 3 == 0
        "buzz"
      elsif number % 5 == 0
        "fizz"
      else
        number
      end
    end
  end
end

# Put in a runner file
FizzBuzz.new.play

# divisible by 5: fizz
# divisible by 3: buzz
# divisible by 3 && 5: fizzbuzz
# otherwise, just print the number

# def fizzbuzz(number)
#   (1..number).map do |i|
#     if i % 3 == 0 && i % 5 == 0
#       "fizzbuzz"
#     elsif i % 3 == 0
#       "fizz"
#     elsif i % 5 == 0
#       "buzz"
#     else
#       i
#     end
#   end
# end
#
# puts "Please enter a positive integer number between 1 and  1000000 for fizzbuzz to run!"
#
# input_number = gets.chomp.delete(",").to_i
#
# if input_number > 1000000
#   puts "Please enter a number between 1 and 1000000"
# elsif input_number.negative?
#   puts "Please add a POSITIVE integer"
# elsif input_number.is_a?(Integer)
#   puts fizzbuzz(input_number)
# else
#   puts "Please enter a positive integer number if you want the fizzbuzz to run!"
# end
