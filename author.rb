require 'pry'

class Author

  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    Author.all << self
  end
  def self.all
    @@all
  end

  def books
    Book.all.select {|b| b.author == self}
  end
  def write_book(title, word_count)
    Book.new(title, self, word_count)
  end
  def total_words
    books.sum {|b| b.word_count}
  end
  def self.most_words
    all.max {|a, b| a.total_words <=> b.total_words}
  end





end





