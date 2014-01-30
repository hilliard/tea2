json.array!(@reqdevstatuses) do |reqdevstatus|
  json.extract! reqdevstatus, :id, :reqdevstatusname
  json.url reqdevstatus_url(reqdevstatus, format: :json)
end
