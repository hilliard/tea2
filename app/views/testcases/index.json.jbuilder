json.array!(@testcases) do |testcase|
  json.extract! testcase, :id, :tctitle, :tcdescription, :tcprecondition, :tcdata, :tcexpectedresults, :tcsubsystem, :tcstatus, :tcpostcondition, :tcauthor, :tcactive, :tcreqreference, :tcmodifiedby, :tcexecdate, :tcstarttime, :tcstoptime, :tcstep
  json.url testcase_url(testcase, format: :json)
end
