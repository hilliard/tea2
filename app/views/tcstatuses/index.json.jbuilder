json.array!(@tcstatuses) do |tcstatus|
  json.extract! tcstatus, :id, :tcstatusname
  json.url tcstatus_url(tcstatus, format: :json)
end
