json.extract! apartment, :id, :address1, :address2, :city, :zip, :state, :country, :name, :phone, :hours, :created_at, :updated_at
json.url apartment_url(apartment, format: :json)
