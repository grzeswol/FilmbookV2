# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :film do
    title "Film"
    director "Director"
    year 1990
		image "film.jpg"
		description "Sample description"
		actors "First Actor, Second Actor"
  end
end
