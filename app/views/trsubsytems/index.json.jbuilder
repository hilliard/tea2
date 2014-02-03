json.array!(@trsubsytems) do |trsubsytem|
  json.extract! trsubsytem, :id, :trsubname
  json.url trsubsytem_url(trsubsytem, format: :json)
end
