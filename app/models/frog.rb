class Frog < ApplicationRecord
  validates :name, :scientific_name, :age, :on_sale, :description, presence: true
  #validates :name, uniqueness: true
  validates :age, numericality: { only_integer: true }

  def self.median_age
    frogs_ages = Frog.pluck(:age)
    median = (frogs_ages.length - 1) / 2.0
    (frogs_ages[median.floor].to_i + frogs_ages[median.ceil].to_i) / 2.0 
  end

  def above_or_average_age
    average = self.class.median_age

    if age.to_i > average
      return 'Frog\'s age is above the average frogs age'

    elsif age.to_i < average
      return 'Frog\'s age is below the average frogs age'

    else 
    return 'Frog\'s age is equal to average frogs age'
    end
  end
end