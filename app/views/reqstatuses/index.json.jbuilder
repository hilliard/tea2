json.array!(@reqstatuses) do |reqstatus|
  json.extract! reqstatus, :id, :reqstatusname
  json.url reqstatus_url(reqstatus, format: :json)
end
