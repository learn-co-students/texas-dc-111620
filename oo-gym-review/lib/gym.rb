class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def memberships
    Membership.all.select do | membership_object |
      membership_object.gym == self
    end
  end

  def lifters
    memberships.map do | membership_object |
      membership_object.lifter
    end
  end

  def names
    lifters.map do | lifter_object |
      lifter_object.name
    end
  end

  def combined_lift
    # lifters.map do | lifter_object |
    #   lifter_object.lift_total
    # end.sum
    total = 0 
    lifters.each do | lift |
      total += lift.lift_total
    end 
    total
  end

  def self.all
    @@all
  end
end
