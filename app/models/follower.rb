class Follower 

    @@all = []

    attr_accessor :name, :age, :life_motto, :cults

    def initialize(name, age, life_motto)
        @name = name 
        @age = age 
        @life_motto = life_motto
        @cults = []
        @@all << self    
    end 

    def self.all
        @@all
    end 

    def of_a_certain_age(age)
        self.all.find_all{|follower| follower.age >= age}
    end 
    
    def join_cult(cult)
        @cults << cult 
    end 
end 