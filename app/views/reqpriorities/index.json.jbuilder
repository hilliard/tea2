json.array!(@reqpriorities) do |reqpriority|
  json.extract! reqpriority, :id, :reqpriorityname
  json.url reqpriority_url(reqpriority, format: :json)
end
