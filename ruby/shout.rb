# module Shout
#     def self.yell_angrily(words)
#         words + "!!!" + " :("
#     end

#     def self.yelling_happily(words)
#         words + "!!!!!!!" + " :D"
#     end
# end

# p Shout.yell_angrily "Who let the dogs out??"
# p Shout.yelling_happily("I did bro")

module Shout
    class Male
        include Shout
    end

    class Female
        include Shout
    end
end

cally = Female.new
p cally.yell_angrily('GOVIND')

govind = Male.new
p govind.yelling_happily('What\'s up Cally')



