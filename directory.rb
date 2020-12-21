# save the names of the students in an array
students = [
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
  students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

# then we print the number of students
def print_footer(students)
  puts "Overall, we have #{students.count} great students."
end

# call methods
print_header
print(students)
print_footer(students)
