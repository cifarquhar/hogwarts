require_relative('models/student.rb')
require_relative('models/house.rb')
require('pry')

Student.delete_all()
House.delete_all()

house1 = House.new({'name' => "Gryffindor", 'logo_url' => "http://vignette1.wikia.nocookie.net/harrypotter/images/8/8e/0.31_Gryffindor_Crest_Transparent.png"})
house2 = House.new({'name' => "Hufflepuff", 'logo_url' => "http://vignette2.wikia.nocookie.net/harrypotter/images/5/50/0.51_Hufflepuff_Crest_Transparent.png"})
house3 = House.new({'name' => "Ravenclaw", 'logo_url' => "http://vignette2.wikia.nocookie.net/harrypotter/images/2/29/0.41_Ravenclaw_Crest_Transparent.png"})
house4 = House.new({'name' => "Slytherin", 'logo_url' => "http://vignette4.wikia.nocookie.net/harrypotter/images/d/d3/0.61_Slytherin_Crest_Transparent.png"})
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