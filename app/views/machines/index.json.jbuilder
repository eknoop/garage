json.array!(@machines) do |machine|
  json.extract! machine, :id, :year, :make, :model, :details
  json.cost machine.cost
  json.url machine_url(machine, format: :json)
end
