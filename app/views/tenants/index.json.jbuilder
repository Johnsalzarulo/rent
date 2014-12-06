json.array!(@tenants) do |tenant|
  json.extract! tenant, :id, :name, :address, :email, :phone, :status
  json.url tenant_url(tenant, format: :json)
end
