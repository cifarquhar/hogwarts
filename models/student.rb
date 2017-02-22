require_relative('../db/sql_runner.rb')

class Student

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age'].to_i
  end

  def save()
    sql = "INSERT INTO students (first_name,last_name,age) VALUES ('#{@first_name}','#{@last_name}',#{@age}) RETURNING id;"
    returned = SqlRunner.run(sql)
    @id = returned[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM students;"
    returned = SqlRunner.run(sql)
    return returned.map { |student| Student.new(student) }
  end

end