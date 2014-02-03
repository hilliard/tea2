json.array!(@trpriorities) do |trpriority|
  json.extract! trpriority, :id, :trpriority
  json.url trpriority_url(trpriority, format: :json)
end
