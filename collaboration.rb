require 'pry'


class Collaboration
  attr_accessor :author, :book
  @@all = []
  def initialize (author, book)
    @author = author
    @book = book
    Collaboration.all << self
  end
  def self.all
    @@all
  end

  



end