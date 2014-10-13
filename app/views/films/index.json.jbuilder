json.array!(@films) do |film|
  json.extract! film, :id, :title, :director, :year
  json.url film_url(film, format: :json)
end
