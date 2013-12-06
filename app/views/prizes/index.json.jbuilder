json.array!(@prizes) do |prize|
  json.extract! prize, :name, :description, :point_cost, :image_url
  json.url prize_url(prize, format: :json)
end
