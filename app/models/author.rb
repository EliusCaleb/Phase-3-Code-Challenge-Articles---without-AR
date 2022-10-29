require_relative './article'


class Author
  
   attr_reader :name
   @@all= []
  def initialize(name)
    @name = name
    @@all << self
  end

  def articles 
     Article.all.select{|articles|  articles.include?(author)}
  end

  def magazines
    Article.all.select{|magazines| magazines.include?(author)}
  end
  def self.all
    @@all
  end
  
end

