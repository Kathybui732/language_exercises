# divisible by 5: fizz
# divisible by 3: buzz
# divisible by 3 && 5: fizzbuzz
# otherwise, just print the number

class FizzBuzz

  def initialize
    @range = nil
  end

  def play
    puts "Please enter a positive integer number between 0 and 1000000 for fizzbuzz to run!"
    user_input
    puts fizz_buzz_generator(@range)
  end

  def user_input
    loop do
      print "Number: "
      input = gets.chomp
      error_message(input)
      break if valid_input?(@range)
    end
  end

  def error_message(input)
    if input.start_with?('-') || input.to_i > 1000000
      puts 'Please enter a number between 0 and 1000000'
    elsif !input.nil? && input.delete('0123456789').empty?
      @range = input.to_i
    else
      puts 'Please use numeric values only'
    end
  end

  def valid_input?(input)
    @range != nil
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

FizzBuzz.new.play
