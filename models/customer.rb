require_relative("../db/sql_runner")

class Customer

  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @funds = options['funds'].to_i
  end

  def save()
    sql = "INSERT INTO customers (name, funds) VALUES ($1, $2) RETURNING id"
    values = [@name, @funds]
    customer = SqlRunner.run(sql, values).first
    @id = customer['id'].to_i
  end
  #
  # def update()
  #   sql = "UPDATE movies SET (title, genre, budget) = ($1, $2, $3) WHERE id = $4"
  #   values = [@title, @genre, @budget, @id]
  #   SqlRunner.run(sql, values)
  # end
  #
  # def delete()
  #   sql = "DELETE * FROM movies where id = $1"
  #   values = [@id]
  #   SqlRunner.run(sql, values)
  # end

end
