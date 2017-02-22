require_relative('models/student.rb')
require('pry')

student1 = Student.new({'first_name' => "Harry", 'last_name' => "Potter", 'age' => 11})
student2 = Student.new({'first_name' => "Ron", 'last_name' => "Weasley", 'age' => 11})
student3 = Student.new({'first_name' => "Draco", 'last_name' => "Malfoy", 'age' => 11})
student1.save()
student2.save()
student3.save()