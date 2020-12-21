# save the names of the students in an array
students = [
  "Dr.Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

# print header
def print_header
  puts "The students of Villans Academy"
  puts "-------------"
end

# print the names of each student
def print(names)
  names.each { |name| puts name }
end

# then we print the number of students
def print_footer(names)
  puts "Overall, we have #{names.count} great students."
end

# call methods
print_header
print(students)
print_footer(students)

# manual new lines are done like so
# print "\nLine 1\nLine 2\nLine 3"
