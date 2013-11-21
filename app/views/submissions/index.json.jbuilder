json.array!(@submissions) do |submission|
  json.extract! submission, :user_id, :challenge_id, :title, :description, :source, :demo
  json.url submission_url(submission, format: :json)
end
