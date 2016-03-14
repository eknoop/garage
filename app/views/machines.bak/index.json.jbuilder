json.array!(@machines) do |machine|
  json.extract! machine, :id, :year, :make, :model, :details
  json.url machine_url(machine, format: :json)
end
