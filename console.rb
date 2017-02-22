require_relative('models/student.rb')
require_relative('models/house.rb')
require('pry')

Student.delete_all()


house1 = House.new({'name' => "Gryffindor", 'logo_url' => ""})
house2 = House.new({'name' => "Hufflepuff", 'logo_url' => ""})
house3 = House.new({'name' => "Ravenclaw", 'logo_url' => ""})
house4 = House.new({'name' => "Slytherin", 'logo_url' => ""})
house1.save
house2.save
house3.save
house4.save

student1 = Student.new({'first_name' => "Harry", 'last_name' => "Potter", 'age' => 11})
student2 = Student.new({'first_name' => "Ron", 'last_name' => "Weasley", 'age' => 11})
student3 = Student.new({'first_name' => "Draco", 'last_name' => "Malfoy", 'age' => 11})
student1.save()
student2.save()
student3.save()

binding.pry
nil