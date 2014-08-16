json.array!(@letters) do |letter|
  json.extract! letter, :id, :content, :status, :read_count, :thanks_count, :user_id
  json.url letter_url(letter, format: :json)
end
