require_relative('../db/sql_runner.rb')

class House

  attr_reader :id, :name, :logo_url

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @logo_url = options['logo_url']
  end

  def save()
    sql = "INSERT INTO houses (name,logo_url) VALUES ('#{@name}','#{@logo_url}') RETURNING id;"
    returned = SqlRunner.run(sql)
    @id = returned[0]['id'].to_i
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = #{id};"
    returned = SqlRunner.run(sql)
    return House.new(returned[0])
  end

  def self.all()
    sql = "SELECT * FROM houses;"
    returned = SqlRunner.run(sql)
    return returned.map { |house| House.new(house) }
  end

  def self.delete_all()
    sql = "DELETE FROM houses;"
    SqlRunner.run(sql)
  end

end