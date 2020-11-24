class Lifter
  attr_reader :name, :lift_total

  @@all = []


  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    self.class.all << self
  end

  def memberships
    # all memebership a particular lifter has 
    Membership.all.select do  | membership_object |
      membership_object.lifter == self
    end
  end

  def gyms
    # we want all gyms that lifter has a membership to 
    memberships.map do | membership_object | 
      membership_object.gym
    end
  end

  def self.average_lift_total
    # how to get average 
    # add all then divide by how many 
    total = 0
    self.all.each do | lifter | 
      total += lifter.lift_total
    end
    total / self.all.length
  end

  def total_cost
    total = 0 
    memberships.each do | membership_object |
      total += membership_object.cost
    end
    total
  end

  def sign_up(gym, cost)
    # create a new membership
    Membership.new(cost, gym, self)
  end


  def self.all
    @@all
  end

end
