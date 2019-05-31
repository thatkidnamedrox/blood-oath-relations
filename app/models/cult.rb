class Cult

    @@all = []

    attr_accessor :name, :location, :founding_year, :slogan, :followers

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @followers = []

        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find{|cult| cult.name == name }
    end

    def self.find_by_location(location)
        self.all.find_all{|cult| cult.location == location }
    end

    def self.find_by_fouding_year(year)
        self.all.find_all{|cult| cult.founding_year == year }
    end

    def self.least_popular
        least_popular = self.all.first
        self.all.each{|cult| cult.cult_population < least_popular.cult_population ? least_popular = cult : nil }
        least_popular
    end

    def self.most_common_location
        all_locations = self.all.map{|cult| cult.location}
        uniq_locations = all_locations.uniq
        most_common = uniq_locations.first

        uniq_locations.each do |location|
            all_locations.count(location) > all_locations.count(most_common) ? most_common = location : nil
        end

        most_common
    end


    def recruit_follower(follower)
        @followers << follower
    end

    def cult_population
        followers.size
    end

    def average_age
        sum = 0
        @followers.each {|follower| sum += follower.age }
        sum.to_f / cult_population.to_f
    end

    def my_followers_mottos
        @followers.each {|follower| puts follower.life_motto }
        nil
    end

end