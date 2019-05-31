require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



classmates = ["Jenna", "Roxanne", "Mary", "Echo", "G", "Peter", "Matt", "Max", "Rina", "Leone", "Alex"]

classmates = classmates.map do |classmate|
  Follower.new(classmate, 20, "YASSSSS!!! :)")
end

cult_1 = Cult.new("Prince", "AKW", 2019, "It's okay :)")
Follower.all.each do |follower|
  BloodOath.new(cult_1, follower)
end

cult_2 = Cult.new("Gigi", "AKW", 2019, "I don't know")
BloodOath.new(cult_2, classmates.sample)
BloodOath.new(cult_2, classmates.sample)
BloodOath.new(cult_2, classmates.sample)

cult_3 = Cult.new("Peter Salovey", "Yale", 2019, "Complicit")
BloodOath.new(cult_2, classmates.sample)

top_ten = Follower.top_ten


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
