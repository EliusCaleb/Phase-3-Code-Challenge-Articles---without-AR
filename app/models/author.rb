require_relative './article'


class Author
  
   attr_reader :name
  
  def initialize(name)
    @name = name
  end

  
  def articles
    Article.all.select{|article| article.author == self}
  end

  def magazines
    self.articles.collect{|articles| articles.magazine}.uniq
  end
  def self.all
    @@all
  end

  
  def add_article(magazine:, title:)
    Article.new(magazine:magazine,title:title, self)
  end
  
  def topic_areas
      self.magazines.collect{|magazine| magazine.category}.uniq
  end
  
end

