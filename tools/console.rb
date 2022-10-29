require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#     `Article#initialize(author, magazine, title)`
#     - An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
#     - An article **cannot** change its author, magazine, or title after it is has been initialized.
#   - `Article#title`
#     - Returns the title for that given article
#   - `Article.all`
#     - Returns an array of all Article instances

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
      def  author
      end

      def magazine
      end

     binding.pry
     
end







### DO NOT REMOVE THIS
binding.pry

0
