class Testcase < ActiveRecord::Base
  attr_accessible :tctitle, :tcdescription, :tcprecondition, :tcdata, :tcexpectedresults, :tcsubsystem, :tcstatus, :tcpostcondition, :tcauthor, :tcactive, :tcreqreference, :tcmodifiedby, :tcexecdate, :tcstarttime, :tcstoptime, :tcstep
end
