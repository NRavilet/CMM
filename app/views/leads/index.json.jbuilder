json.array!(@leads) do |lead|
  json.extract! lead, :id, :email, :name, :lastname, :company, :role, :area, :industry, :phone, :module, :status
  json.url lead_url(lead, format: :json)
end
