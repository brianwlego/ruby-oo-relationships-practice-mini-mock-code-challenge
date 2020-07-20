require 'pry'
require_relative './book'
require_relative './author'
require_relative './collaboration.rb'

jrtolken = Author.new("JRR Tolken")
oprah = Author.new("Oprah")
david = Author.new("David Sedaris")
harper = Author.new("Harper Lee")
maya = Author.new("Maya Angelou")
helper_one = Author.new("Helper Author One")
helper_two = Author.new("Helper Author Two")

hobbit = Book.new("The Hobbit", 60000)
cooking = Book.new("Cooking w/Oprah", 24050)
holidays = Book.new("Holidays On Ice", 20900)
mockingbird = Book.new("To Kill A Mockingbird", 13500)
caged_bird = Book.new("I Know Why The Caged Bird Sings", 80250)
talk_pretty = Book.new("Me Talk Pretty One Day", 90000)
help_book = Book.new("Book w/Multiple Authors", 11000)

# Instance objects one author & one book
collab1 = Collaboration.new(jrtolken, hobbit)
collab2 = Collaboration.new(oprah, cooking)
collab3 = Collaboration.new(harper, mockingbird)
collab4 = Collaboration.new(maya, caged_bird)
# Instance objects author w/multiple books
collab5 = Collaboration.new(david, holidays)
collab6 = Collaboration.new(david, talk_pretty)
# Instance ojects book w/multiple authors
collab7 = Collaboration.new(helper_one, help_book)
collab8 = Collaboration.new(helper_two, help_book)



binding.pry