require_relative '../config/environment.rb'
def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

elius = Author.new("Elius")
forbes = Magazine.new("Forbes", "Business")
nation = Magazine.new("vlog","Music")
people = Magazine.new("Tech","Social")
article1 = Article.new(elius, forbes, "Forbes")
articles = Article.new(elius,nation,"Vlog")
article2 = Article.new(elius,people,"Tech")




faith = Author.new("Faith")
people = Magazine.new("People","Family")
article4 = Article.new(faith,people,"People")
 




### DO NOT REMOVE THIS
binding.pry

0
