json.array!(@expenses) do |expense|
  json.extract! expense, :id, :cost, :purpose, :description
  json.url expense_url(expense, format: :json)
end
