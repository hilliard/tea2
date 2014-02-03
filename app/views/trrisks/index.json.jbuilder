json.array!(@trrisks) do |trrisk|
  json.extract! trrisk, :id, :trrisk
  json.url trrisk_url(trrisk, format: :json)
end
