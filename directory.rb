# saved the names of the students in an array
# list = [
#   {name: "Dr.Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :november},
#   {name: "Michael Corleone", cohort: :november},
#   {name: "Alex DeLarge", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :november},
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november}
# ]

# empty list
@students = []

# interactive menu
def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

# case method
def process(input)
  case input
    when "1"
      students = input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit
    else
      puts "I don't know how to do that."
  end
end

# print menu
def print_menu
  puts "1: Input students"
  puts "2: Show students"
  puts "3: Save student list"
  puts "4: Load student list from csv"
  puts "9: Exit"
end

# print student list
def show_students
  print_header
  print_list
  print_footer
end

# print header
def print_header
  puts "The students of Villans Academy"
  puts "-------------------------------"
end

# print the names of each student
def print_list
  @students.each_with_index do |student,index|
    puts "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

# then we print the number of students
def print_footer
  puts "Overall, we have #{@students.count} great students."
end

# method for adding new students
def input_students
  puts "Please enter the names of new students."
  puts "To stop adding new names hit enter twice."

  name = STDIN.gets.chomp
  cohort = STDIN.gets.chomp

  while !name.empty? && !cohort.empty? do
    @students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{@students.count} students."
    name = STDIN.gets.chomp
  end
end

# save student list to csv file
def save_students
  #open file for writing
  file = File.open("students.csv", "w")
  # itarate over student array
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

# load students from csv file
def load_students(file_name="students.csv")
  file = File.open(file_name, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(",")
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

# load student list on program boot
def try_load_students
  file_name = ARGV.first
  return if file_name.nil?
  if File.exists?(file_name)
    load_students(file_name)
    puts "Loaded #{@students.count} from #{file_name}"
  else
    puts "Sorry, #{file_name} doesn't exist"
    exit
  end
end

# load list if argument is given on boot
try_load_students

# call method
interactive_menu
