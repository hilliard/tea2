json.array!(@os) do |o|
  json.extract! o, :id, :osname
  json.url o_url(o, format: :json)
end
