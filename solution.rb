# Please copy/paste all three classes into this file to submit your solution!
#article
class Article
    attr_reader :author, :magazine, :title
    @@all = []

    def initialize(author,magazine,title)
       @author = author
       @magazine = magazine
       @title = title
       @@all << self
    end 

    def self.all
       @@all
    end
end 

#magazine
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

#author
class Author
   @@all = []
   attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
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

  
  def add_article(magazine, title)
    Article.new( self, magazine,title )
  end
  
  def topic_areas
      self.magazines.collect{|magazine| magazine.category}.uniq
  end
  
end


 
 
 