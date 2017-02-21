# Virus Predictor

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# EXPLANATION OF require_relative
# require_relative is a built-in method that gives you access to files that are relative to the current file
# it is different from require in that require uses your current word directory
# require is more-so used to include library components that are part of your ruby configuration's load_path
# using require to load files you wrote will crash your program if you access your program outside of the directory in which the program resides

require_relative 'state_data'

class VirusPredictor
  # the initialize method forces instances of VirusPredictor to be instantiated with three arguments, state_of_origin, population_density, population. It sets those arguments to three instance variables (creates three attributes)
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls predicted_deaths and speed_of_spread methods, both which print conclusions on how many deaths will occur in state and how fast (how much time) it will spread
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  # All subsequent methods will be private unless toggled otherwise (private meaning they cannot be accesssed outside the class)
  private

  # Private method that takes three arguments and uses if elsif else control flow to determine how deaths will be calculated. The method looks at population density first, then calculates number of deaths based on population and a quantifier. To provide a whole value, it takes the float and takes the lower integer (using Float#floor)
  # def predicted_deaths
  #   # predicted deaths is solely based on population density
  #   x = @population_density

  #   case
  #   when x >= 200
  #     multiplier = 0.4
  #   when x >= 150
  #     multiplier = 0.3
  #   when x >= 100
  #     multiplier = 0.2
  #   when x >= 50
  #     multiplier = 0.1
  #   else
  #     multiplier = 0.05
  #   end

  #   print "#{@state} will lose #{(@population * multiplier[@population_density]).floor} people in this outbreak"
  # end

  # Private method that takes two arguments and also uses if elsif else control flow to determine virus speed. It looks at population density and determines the speed
  def speed_of_spread() #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end
end # end of VirusPredictor Class Declaration

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population])
  state.virus_effects
end

#=======================================================================