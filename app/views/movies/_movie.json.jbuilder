json.extract! movie, :id, :name, :year, :genre, :director, :description, :additional_information, :created_at, :updated_at
json.url movie_url(movie, format: :json)
