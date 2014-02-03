json.array!(@trrisks) do |trrisk|
  json.extract! trrisk, :id, :trriskname
  json.url trrisk_url(trrisk, format: :json)
end
