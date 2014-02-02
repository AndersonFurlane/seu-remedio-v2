json.array!(@migrations) do |migration|
  json.extract! migration, :id, :remedy
  json.url migration_url(migration, format: :json)
end
