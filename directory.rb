# save the names of the students in an array
list = [
  {name: "Dr.Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]

# print header
def print_header
  puts "The students of Villans Academy"
  puts "-------------"
end

# print the names of each student
def print(students)
  students.each_with_index { |student,index| puts "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)" }
end

# then we print the number of students
def print_footer(students)
  puts "Overall, we have #{students.count} great students."
end

# method for adding new students
def input_students(list)
  puts "Please enter the names of new students."
  puts "To stop adding new names hit enter twice."

  students = list
  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students."
    name = gets.chomp
  end

  students
end

# call methods
students = input_students(list)
print_header
print(students)
print_footer(students)
