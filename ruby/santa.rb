class Santa
    attr_reader :ethnicity, :age
    attr_accessor :gender

    def initialize(gender, ethnicity)
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = 0
        puts "Initializing Santa instance"
    end

    def speak
        puts "Ho, ho, ho! Haaaappy holidays!"
    end

    def eat_milk_and_cookies(cookie_type)
        puts "That was a good #{cookie_type}"
    end

    def celebrate_birthday
        @age += 1
        puts "You're now #{@age} years old!"
    end

    def get_mad_at(name_of_reindeer)
        @reindeer_ranking.push(@reindeer_ranking.delete(name_of_reindeer
            ))
    end
end

santa = Santa.new('Male', 'Indian')
santa.speak
santa.celebrate_birthday()
santa.get_mad_at('Dasher')
santa.gender = 'Female'
p santa.age
p santa.ethnicity
p santa

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

