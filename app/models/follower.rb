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

    def self.most_active
        most_active = self.all.first
        self.all.each { |follower| follower.cults.size > most_active.cults.size ? most_active = follower : nil }
        most_active
    end

    def self.top_ten
        sorted = self.all.sort_by { |follower| follower.cults.size }
        sorted.reverse!.first(10)
    end 


    def of_a_certain_age(age)
        self.all.find_all{|follower| follower.age >= age}
    end 

    def join_cult(cult)
        @cults << cult 
    end 

    def my_cults_slogans
        @cults.each { |cult| puts cult.slogan }
        nil
    end
end 