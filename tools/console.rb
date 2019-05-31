require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult = Cult.new("Prince", "AKW", 2019, "It's okay :)")
jenna = Follower.new("Jenna", 29, "Yas")
roxanne = Follower.new("Roxanne", 20, "yippie!!!!!")
bloodoath = BloodOath.new(cult, jenna)
bloodoath_2 = BloodOath.new(cult, roxanne)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
