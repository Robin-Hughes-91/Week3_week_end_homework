require_relative("../db/sql_runner")

class Film

  attr_reader :id
  attr_accessor :title, :price

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @price = options['price'].to_i
  end

  def save()
    sql = "INSERT INTO films (title, price) VALUES ($1, $2) RETURNING id"
    values = [@title, @price]
    film = SqlRunner.run(sql, values).first
    @id = film['id'].to_i
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
