require 'pry'

class Book

  attr_accessor :title, :word_count
  @@all = []
  def initialize(title, word_count=0)
    @title = title
    @word_count = word_count
    Book.all << self
  end
  def self.all
    @@all
  end

  def author
    Collaboration.all.select {|c| c.book == self}
  end

  
  




end