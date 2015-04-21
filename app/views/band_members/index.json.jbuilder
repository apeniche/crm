json.array!(@band_members) do |band_member|
  json.extract! band_member, :id, :name, :instrument, :age
  json.url band_member_url(band_member, format: :json)
end
