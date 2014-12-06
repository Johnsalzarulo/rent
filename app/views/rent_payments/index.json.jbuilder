json.array!(@rent_payments) do |rent_payment|
  json.extract! rent_payment, :id, :ammount, :date_due, :date_paid, :status, :reff, :method
  json.url rent_payment_url(rent_payment, format: :json)
end
