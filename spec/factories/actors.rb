# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :actor do
		name "Sample actor"
		born_year "1987-01-01"
		born_place "Warsaw"
		bio "Short information about sample actor"
  end
end
