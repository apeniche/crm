json.array!(@questions) do |question|
  json.extract! question, :id, :body, :category, :interval, :default_answer
  json.url question_url(question, format: :json)
end
