class Article
#     `Article#initialize(author, magazine, title)`
#     - An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
#     - An article **cannot** change its author, magazine, or title after it is has been initialized.
#   - `Article#title`
#     - Returns the title for that given article
#   - `Article.all`
#     - Returns an array of all Article instances
    attr_reader :author, :magazine,:title
    @@all = []
    def initialize(author,magazine,title)
         @author = author,
         @magazine = magazine,
         @title = title
         @@all << self
    
    end

    # Article

    # - `Article#author`
    #   - Returns the author for that given article
    # - `Article#magazine`
    #   - Returns the magazine for that given article
    def title
        @title
    end
    
    def self.all
        @@all
    end

    def author
        self.class.all.each do|article,title|
            if article.title == title
                return author
            end
        end 
    end

    def magazine
        self.class.all.each do |article,magazine|
            if article.magazine == magazine
               return magazine
            end
        end
    end


end


 puts hello = Article.new( "Forbes")
 puts hello.author