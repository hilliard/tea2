json.array!(@reqdifficulties) do |reqdifficulty|
  json.extract! reqdifficulty, :id, :reqdifficultyname
  json.url reqdifficulty_url(reqdifficulty, format: :json)
end
