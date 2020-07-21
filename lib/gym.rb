class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end 

  def memberships
    Membership.all.select {|mship| mship.gym == self}
  end

  def lifters
    memberships.map {|mship| mship.lifter}
  end

  def lifter_names
    lifters.map {|lftr| lftr.name}
  end

  def combined_lift
    lifters.sum {|lftr| lftr.lift_total}
  end
end
