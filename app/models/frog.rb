class Frog < ApplicationRecord
  def self.average_age 
    Frog.average(:age)
  end

  def above_or_average_age
    average = self.class.average_age

    if age > average
      return 'above the average frogs age'
    end

    if age < average
      return 'below the average frogs age'
    end

    return 'equal to average frogs age'
  end
end

