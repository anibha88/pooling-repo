json.array!(@preferences) do |preference|
  json.extract! preference, :id, :chattiness, :smoking, :pets, :music
  json.url preference_url(preference, format: :json)
end
