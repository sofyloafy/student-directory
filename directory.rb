@students =[]
def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
end
def show_students
    print_header
    print_student_list(@students)
    print_footer(@students)
end
    
def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit the return twice"
    name = gets.chomp
    while !name.empty?
        @students <<{name: name, cohort: :november}
        puts "Now we have #{@students.count} students"
        name = gets.chomp
    end
    @students
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end 
def print_student_list(names)
  names.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
def process(selection)    
    case selection 
    when "1"
        input_students
    when "2"
        show_students
    when "9"
        exit
    else
        puts "I don't know what you meant, try again"
    end
end
def interactive_menu
    loop do
        print_menu
        process(gets.chomp)
    end
end

interactive_menu