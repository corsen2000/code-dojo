json.array!(@challenges) do |challenge|
  json.extract! challenge, :title, :description, :start, :end, :points
  json.url challenge_url(challenge, format: :json)
end
