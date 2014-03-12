json.array!(@madnesses) do |madness|
  json.extract! madness, :id, :being
  json.url madness_url(madness, format: :json)
end
