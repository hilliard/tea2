json.array!(@testruns) do |testrun|
  json.extract! testrun, :id, :trname, :trdescription, :trfeature, :tester, :testtype, :trstatus, :trpriority, :tros, :trbrowser, :trrisk, :trstart, :trexecdate, :trstop, :trrequirement, :trtrackid, :testcase_id
  json.url testrun_url(testrun, format: :json)
end
