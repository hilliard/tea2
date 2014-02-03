json.array!(@testsuites) do |testsuite|
  json.extract! testsuite, :id, :tsname, :tsdescription, :tsfeature, :tstester, :tstesttype, :tsstatus, :tspriority, :tsos, :tsbrowser, :tsrisk, :tsstart, :tsstop, :tsexecdate, :tsrequirement, :tstrackid, :testrun_id
  json.url testsuite_url(testsuite, format: :json)
end
