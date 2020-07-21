class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def self.all
    @@all
  end 

  def memberships
    Membership.all.select {|mship| mship.lifter == self}
  end

  def gyms
    memberships.map {|mship| mship.gym}
  end

  def self.avg_lift
    total_lift = self.all.sum {|lftr| lftr.lift_total}
    lifter_count = self.all.count
    avg = total_lift / lifter_count
    avg 
  end
  
  def total_cost
    memberships.sum {|mship| mship.cost}
  end
  
  def start_membership(gym, cost)
    Membership.new(gym, cost, self)
  end
end
