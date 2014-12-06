json.array!(@landlords) do |landlord|
  json.extract! landlord, :id, :name, :address, :email, :phone
  json.url landlord_url(landlord, format: :json)
end
