json.array!(@transactions) do |transaction|
  json.extract! transaction, :User_id, :Prize_id, :cost
  json.url transaction_url(transaction, format: :json)
end
