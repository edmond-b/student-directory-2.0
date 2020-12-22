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

# interactive menu
def interactive_menu

  students = []

  loop do
    puts "1: Input students"
    puts "2: Show students"
    puts "9: Exit"
    input = gets.chomp

    case input
      when "1"
        students = input_students(students)
      when "2"
        print_header
        print(students)
        print_footer(students)
      when "9"
        exit
      else
        puts "I don't know how to do that."
    end

  end
end

# print header
def print_header
  puts "The students of Villans Academy"
  puts "-------------------------------"
end

# print the names of each student
def print(students)
  students.each_with_index { |student,index| puts "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)" }
  # students_by_month = {}
  # students.map { |student|
  #   month = student[:cohort]
  #     if students_by_month[month] == nil
  #       students_by_month[month] = []
  #     end
  #     students_by_month[month].push(student[:name])
  #   }
  #  puts students_by_month
end

# then we print the number of students
def print_footer(students)
  puts "Overall, we have #{students.count} great students."
end

# method for adding new students
def input_students(students)
  puts "Please enter the names of new students."
  puts "To stop adding new names hit enter twice."

  students = []
  name = gets.chomp
  cohort = gets.chomp

  while !name.empty? && !cohort.empty? do
    students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{students.count} students."
    name = gets.chomp
  end

  students
end

# call methods
interactive_menu
# students = input_students(list)
# print_header
# print(students)
# print_footer(students)
