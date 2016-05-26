json.array!(@my_boices) do |my_boice|
  json.extract! my_boice, :id, :name, :description
  json.url my_boice_url(my_boice, format: :json)
end
