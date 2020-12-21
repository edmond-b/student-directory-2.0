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

# print the names of each student
puts "The students of Villans Academy"
puts "-------------"
students.each { |student| puts student }

# then we print the number of students
puts "Overall, we have #{students.count} great students."

# manual new lines are done like so
# print "\nLine 1\nLine 2\nLine 3"
