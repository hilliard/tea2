json.array!(@testtypes) do |testtype|
  json.extract! testtype, :id, :tname
  json.url testtype_url(testtype, format: :json)
end
