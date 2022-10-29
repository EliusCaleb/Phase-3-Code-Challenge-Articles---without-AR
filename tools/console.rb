require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

class Article
  attr_reader :author, :magazine,:title
  @@all = []
  def initialize(author,magazine,title)
      @author = author,
      @magazine = magazine,
      @title = title
      @@all << self
  
  end

  def self.all
    @@all
  end
end

class Author
  
   attr_reader :name

  def initialize(name)
    @name = name
  end

  def articles 
     results = Article.all.select{|articles|  articles.include?(author)}
  end

  def magazines
    results = Article.all.select{|magazines| magazines.uniq.include?(author)}
  end
  
end


elius = Author.new("Elius")
forbes = Magazine.new("Forbes", "Business")
article = Article.new(elius, forbes, "Forbes")





### DO NOT REMOVE THIS
binding.pry

0
