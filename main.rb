myHeight = 0.0
myWeight = 0.0
myBMI = 0.0

puts "Please enter your Height in inches: "
myHeight = gets.chomp.to_i

if myHeight < 60
    puts "You are short.\n"
else
    puts "You're tall.\n"
end

puts "In metric your Height is " + ((myHeight*2.540).round(2)).to_s + " centimeters.\n"

puts "Please enter your Weight in inches: "
myWeight = gets.chomp.to_i

if myWeight>200
    puts "You're kind of overweight.\n"
else
    puts "You're not overweight, lucky you.\n"
end

puts "Your weight is " + ((myWeight/2.20462).round(4)).to_s << " kilograms.\n"
myBMI = (myWeight/2.20462)/(myHeight*0.0254 * myHeight*0.0254)
puts "And more importantly, considering your Height and your Weight, your BMI is " + ((myBMI.round(4)).to_s) + " kg/m^2.\n"

if myBMI < 18.5
    puts "Which means that you're unfortunately underweight, you must eat more often.\n"
elsif myBMI >= 18.5 && myBMI < 25.0
    puts "Which means that you have the ideal BMI, and a normal Weight.\n"
elsif myBMI >= 25.0 && myBMI <= 30.0
    puts "Which means that you are currently overweight.\n"
elsif myBMI > 30.0
    puts "Which means that you are currently obese, you should stop eating junk food."
end