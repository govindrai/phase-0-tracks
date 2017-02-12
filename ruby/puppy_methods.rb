class Puppy
    def initialize
        puts "Initializing new Puppy instance..."
    end

    def fetch(toy)
        puts "I brought back the #{toy}!"
        toy
    end

    def speak(integer)
        puts "#{'woof ' * integer}"
    end

    def roll_over
        puts "*rolls over*"
    end

    def dog_years(integer)
        integer * 7
    end

    def play_dead
        puts "Don't hurt me..I'm already dead..."
    end
end

tiger = Puppy.new
tiger.fetch('bone')
tiger.speak(5)
tiger.roll_over
p tiger.dog_years(9)
tiger.play_dead

class Person


    def initialize(name, age, gender, city)
        @person = {}
        @name = name
        @age = age
        @gender = gender
        @city = city
        @year_of_birth = (2017 - age)
        @person[:name] = @name
        @person[:age] = @age
        @person[:gender] = @gender
        @person[:city] = @city
        @person[:year_of_birth] = @year_of_birth
    end



    def add_relation (name, age, gender)
        relation_hash = {name:name, age:age, gender:gender}
        if @person[:relation]
            @person[:relation].push(relation_hash)
        else
            @person[:relation] = [relation_hash]
        end
    end

    def print_person
        puts @person
        puts "Just puts person"
    end
end

govind = Person.new("Govind Rai", 23, "Male", "Dublin")
govind.add_relation("Cally Dai", 25, "Female")
govind.add_relation("Samriti Rai", 25, "Female")
govind.print_person

samriti = Person.new("Samriti Rai", 25, "Female", "Dublin")
samriti.print_person()

person_list = []
50.times do |x|
    person_list.push(Person.new("Govind#{x}", 23, "Male", "Dublin"))
end

# p person_list

person_list.each do |person|
    person.add_relation("Cally Dai", 25, "Female")
end

p person_list