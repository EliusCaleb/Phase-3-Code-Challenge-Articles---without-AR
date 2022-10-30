require_relative './article'
class Magazine
     @@all = []
  attr_accessor :name, :category
      
  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end
  
  def self.all
    @@all
  end
  def articles 
    Article.all.select{|article| article.magazine == self}    
  end
  def contributors 
    self.articles.collect{|article| article.author}.uniq
  end
  def self.find_by_name(name)
    self.all.find {|magazine| magazine.name.include?(name)}
      name
  end
  def article_titles
    self.articles.collect {|article| article.title}
  end
  def contributing_authors
    self.contributors.select{|author|author.articles.count > 2}
  end
end
