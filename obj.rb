class Restaurant
    attr_accessor :name
      @@all = []
    def initialize(name)
        @name = name
       @@all << self
    end

    def self.all
        @@all
    end
    def reviewed_by_customers
        Review.all.select{|n| n.restaurant== self}
    end
    def customers
        self.reviewed_by_customers.collect{|n| n.customer}.uniq
    end
    
    def average_star_rating
        number = reviewed_by_customers.count
        total = reviewed_by_customers.reduce(0){|sum,r| sum +=r.rating}
        average = total / number
    end 

    def longest_review
        longest = self.reviewed_by_customers.collect{|r| r.content}
         longest.max_by(&:length)
    end

    def self.find_by_name(name)
        restaurant = self.all.find{|n| n.name == name}
        restaurant.name
    end

end
kfc = Restaurant.new('KFC')


class Customer 
    attr_accessor :first_name, :last_name
    @@all = []

    def initialize(name)
       @name = name.split
       @first_name = name[0]
       @last_name = name[1]
       @@all << self

    end

    def self.all
        @all
    end

    def full_name
        "#{@first_name}  #{@last_name}"
    end

    def add_review(restaurant,content,rating)

        Review.new(restaurant:restaurant,content:content,rating:rating, self)
    end

    def reviews_by_user
        Review.all.select{|review| review.customer == self}
    end

    def num_reviews
        reviews_by_user.count
    end

    def  restaurants
        self.num_reviews_by_user.collect{|review| review.restaurant}.uniq
    end


    def find_by_name(name)
        customer = self.all.find{|n| n.first_name.include?(name)}
        customer.full_name
    end


    def self.find_all_by_first_name
        customer = self.all.find_all{|n| n.full_name.start_with.include?(name)}
    end

    def self.all_names
        self.all.collect{|c| c.full_name}
    end
end


class Review 
    @@all = []
    attr_reader :ratings
    attr_accessor :restaurant, :customer, :content

    def initialize(content,ratings,restaurant,customer)
        @customer = customer
        @ratings = ratings
        @content = content
        @restaurant = restaurant
        @@all << self
    end


    def self.all
        @@all
    end
    
    def ratings=(the_rating)
        @ratings = the_rating.clamp(1,5)

    end

end
