class Frog < ApplicationRecord
  def self.median_age
    ages = Frog.pluck(:age)
    median = (ages.length - 1) / 2.0
    (ages[median.floor] + ages[median.ceil]) / 2.0 
  end

  def above_or_average_age
    average = self.class.median_age

    if age > average
      return 'Frog\'s age is above the average frogs age'

    elsif age < average
      return 'Frog\'s age is below the average frogs age'

    else 
    return 'Frog\'s age is equal to average frogs age'
    end
  end
end

