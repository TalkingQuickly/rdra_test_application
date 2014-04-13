json.array!(@awesomes) do |awesome|
  json.extract! awesome, :id, :name
  json.url awesome_url(awesome, format: :json)
end
