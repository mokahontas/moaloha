json.array!(@impressions) do |impression|
  json.extract! impression, :id
  json.url impression_url(impression, format: :json)
end
