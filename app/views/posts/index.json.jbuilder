json.array!(@posts) do |post|
  json.extract! post, :id, :from, :to, :description
  json.url post_url(post, format: :json)
end
