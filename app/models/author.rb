class Author
  #attr_accessor :name
   attr_reader :name
#    `Author#initialize(name)`
#   - An author is initialized with a name, as a string.
#   - A name **cannot** be changed after it is initialized.
# - `Author#name`
#   - Returns the name of the author
  def initialize(name)
    @name = name
  end
  
  
end
puts musk = Author.new("Elon")
puts musk.name
