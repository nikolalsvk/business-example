json.array!(@places) do |place|
  json.extract! place, :id, :postal_code, :name, :country_id
  json.url place_url(place, format: :json)
end
