require_relative( 'models/ticket' )
require_relative( 'models/film' )
require_relative( 'models/customer' )

require( 'pry-byebug' )

Ticket.delete_all()
Film.delete_all()
Customer.delete_all()


 # FILM TABLE INFO
  film1 = Film.new({
    'title' => 'Lord of the Rings',
    'price' => 5
     })
  film1.save()

  film2 = Film.new({
    'title' => 'Men in Black',
    'price' => 10
     })
  film2.save()

  film3 = Film.new({
    'title' => 'The Lion King',
    'price' => 15
    })
  film3.save()


# CUSTOMER TABLE INFO
customer1 = Customer.new({
  'name' => 'John Smith',
  'funds' => 50
  })
customer1.save()

customer2 = Customer.new({
  'name' => 'Robin Hughes',
  'funds' => 100
  })
customer2.save()

# TICKET TABLE INFO
ticket1 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film1.id
  })
ticket1.save()

ticket2 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film2.id
  })
ticket2.save()







binding.pry
nil
