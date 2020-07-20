require 'pry'

class Book

  attr_accessor :title, :author, :word_count
  @@all = []
  def initialize(title, author, word_count=0)
    @title = title
    @author = author
    @word_count = word_count
    Book.all << self
  end
  def self.all
    @@all
  end

  
  




end