class BloodOath

    @@all = []

    attr_accessor :initiation_date, :cult, :follower

    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @initiation_date = Time.now.strftime("%Y/%m/%d")
        
        cult.recruit_follower(follower)
        follower.join_cult(cult)

        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        self.all.first.follower
    end

end