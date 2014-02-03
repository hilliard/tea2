class Testsuite < ActiveRecord::Base
  attr_accessible :tsname, :tsdescription, :tsfeature, :tstester, :tstesttype, :tsstatus, :tspriority, :tsos, :tsbrowser, :tsrisk, :tsstart, :tsstop, :tsexecdate, :tsrequirement, :tstrackid, :testrun_i
  belongs_to :testrun
end
