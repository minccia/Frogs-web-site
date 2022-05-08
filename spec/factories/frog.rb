FactoryBot.define do
  factory :frog do 
    sequence(:name) { |n| "Mr. Frog #{n}"}
    sequence(:scientific_name) { |n| "Sapo de laboratoŕio #{n}" }
    sequence(:age) { rand(10) }
    on_sale { true }
    description { 'Pequena descrição'}

    trait :not_on_sale do 
        on_sale { false }
    end
  end
end