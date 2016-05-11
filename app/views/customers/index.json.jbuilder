json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :cpf, :address_street, :address_number
  json.url customer_url(customer, format: :json)
end
