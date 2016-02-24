json.array!(@pois) do |poi|
  json.extract! poi, :id, :subj, :instruc, :tm, :rm
  json.url poi_url(poi, format: :json)
end
