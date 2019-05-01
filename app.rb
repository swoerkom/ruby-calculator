
def calculatorstart
  puts "Basic (1), Advanced calculator (2), BMI (3) or Trip Calculator (4)?"
  type = gets.chomp
  if  type == "1"
    basic_calculator
  elsif type === "2"
    advanced_caulator
  elsif type === "3"
    bmi_calculator
  elsif type === "4"
    trip_calculator
  end
end

def basic_calculator
  puts "Basic calculator"
  puts "First number to operate on?"
  number1 = gets.chomp
  puts "Second number to operate on?"
  number2 = gets.chomp
  puts "Operation?"
  operation = gets.chomp
  puts eval"#{number1.to_f}#{operation}#{number2}"
end

def advanced_calculator
  puts "Power of (P) or Square root (S)?"
  entry = gets.chomp
  if entry == "P"
    puts "First number?"
    number1 = gets.chomp
    puts "To the power of?"
    number2 = gets.chomp
    puts eval("#{number1.to_f}**#{number2}")
  else
    puts "The square root of?"
    sqrt = gets.chomp
    puts Math.sqrt(sqrt.to_f)
  end
end

def bmi_calculator
  puts "Imperial (1) or Metric (2)?"
  entry = gets.chomp
  if entry == "1"
    puts "Enter your height in cm"
    height = gets.chomp
    puts "Enter your weight in kg"
    weight = gets.chomp
    puts eval("#{weight.to_f} / #{height.to_f} / #{height} * 10000")
  elsif entry == "2"
    puts "Enter your height in inches"
    height = gets.chomp
    puts "Enter your weight lbs"
    weight = gets.chomp
    height2 = height.to_f * height.to_f
    puts eval("#{weight.to_f} * 703 / #{height2}")
  end
end

def trip_calculator
  puts "How far are you going?"
  distance = gets.chomp
  puts "What is the fuel efficiency of your car? (In MPG)"
  fuel = gets.chomp
  puts "What is your cost per gallon?"
  cost = gets.chomp
  puts "What will your average speed be? (In MPH)"
  speed = gets.chomp
  time = eval("#{distance.to_f} / #{speed.to_f}").round
  if speed.to_i <= 60
    cost = eval("#{distance.to_f} / #{fuel.to_f} * #{cost.to_f}").round
    puts "The journey will take you #{time} hours and cost you £#{cost}."
    elsif speed.to_i > 60
      puts eval("#{fuel.to_f} - 2 * (#{speed.to_f}-60)")
      if fuel.to_i >= 0
        cost = eval("#{distance.to_f} / #{fuel.to_f} * #{cost.to_f}").round
        puts "The journey will take you #{time} hours and cost you £#{cost}."
      end
  end
end

calculatorstart
