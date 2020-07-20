require 'pry'
require_relative './book'
require_relative './author'

jrtolken = Author.new("JRR Tolken")
oprah = Author.new("Oprah")
david = Author.new("David Sedaris")
harper = Author.new("Harper Lee")

hobbit = Book.new("The Hobbit", jrtolken, 60000)
cooking = Book.new("Cooking w/Oprah", oprah, 24050)
holidays = Book.new("Holidays On Ice", david, 20900)
mockingbird = Book.new("To Kill A Mockingbird", harper, 13500)
talk_pretty = Book.new("Me Talk Pretty One Day", david, 30000)




binding.pry