json.array!(@answers) do |answer|
  json.extract! answer, :id, :value
  json.url answer_url(answer, format: :json)
end
