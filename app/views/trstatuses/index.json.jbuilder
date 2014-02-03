json.array!(@trstatuses) do |trstatus|
  json.extract! trstatus, :id, :trstatusname
  json.url trstatus_url(trstatus, format: :json)
end
