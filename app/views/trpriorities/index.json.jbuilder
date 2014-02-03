json.array!(@trpriorities) do |trpriority|
  json.extract! trpriority, :id, :trpriorityname
  json.url trpriority_url(trpriority, format: :json)
end
