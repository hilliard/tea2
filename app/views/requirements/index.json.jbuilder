json.array!(@requirements) do |requirement|
  json.extract! requirement, :id, :reqtitle, :reqowner, :reqstatus, :reqpriority, :reqdifficulty, :reqdevstatus, :reqtestcoverage, :reqtrackid, :reqrelease
  json.url requirement_url(requirement, format: :json)
end
