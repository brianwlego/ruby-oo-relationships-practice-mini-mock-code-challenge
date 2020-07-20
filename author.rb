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
    Collaboration.all.select {|c| c.author == self}.map {|b| b.book}
    
  end
  def write_book(title, word_count)
    Collaboration.new(self, Book.new(title, word_count))
  end
  def total_words
    books.sum {|c| c.book.word_count}
  end
  def self.most_words
    all.max {|a, b| a.total_words <=> b.total_words}
  end





end





