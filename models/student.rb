require_relative('../db/sql_runner.rb')

class Student

  attr_reader :id
  attr_accessor :first_name, :last_name, :age, :house_id
  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age'].to_i
    @house_id = options['house_id'].to_i
  end

  def save()
    sql = "INSERT INTO students (first_name,last_name,age,house_id) VALUES ('#{@first_name}','#{@last_name}',#{@age},#{@house_id}) RETURNING id;"
    returned = SqlRunner.run(sql)
    @id = returned[0]['id'].to_i
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = #{id};"
    returned = SqlRunner.run(sql)
    return Student.new(returned[0])
  end

  def self.all()
    sql = "SELECT * FROM students;"
    returned = SqlRunner.run(sql)
    return returned.map { |student| Student.new(student) }
  end

  def self.delete_all()
    sql = "DELETE FROM students;"
    SqlRunner.run(sql)
  end

  def house()
    sql = "SELECT * FROM houses INNER JOIN students ON houses.id = students.house_id WHERE students.id = #{@id}"
    returned = SqlRunner.run(sql)
    return returned[0]['name']
  end

end