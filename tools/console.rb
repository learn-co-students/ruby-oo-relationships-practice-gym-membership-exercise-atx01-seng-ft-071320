# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
#lifters
sam = Lifter.new("Sam", 200)
max = Lifter.new("Max", 210)
jess = Lifter.new("Jess", 185)
kel = Lifter.new("Kel", 300)
#gyms
la_fit = Gym.new("LA Fitness")
twe_four = Gym.new("24 Hour Finess")
planet = Gym.new("Planet Fitness")
#memberships
mem1 = sam.start_membership(la_fit, 50)
mem2 = sam.start_membership(twe_four, 30)
mem3 = max.start_membership(la_fit, 50)
mem4 = jess.start_membership(planet, 20)
mem5 = kel.start_membership(planet, 40)
mem6 = kel.start_membership(twe_four, 50)
binding.pry

puts "Gains!"
