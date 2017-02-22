require_relative('models/student.rb')
require('pry')

student1 = Student.new({'first_name' => "Harry", 'last_name' => "Potter", 'age' => 11})
student1.save()