class Testrun < ActiveRecord::Base
  attr_accessible :trname, :trdescription, :trfeature, :tester, :testtype, :trstatus, :trpriority, :tros, :trbrowser, :trrisk, :trstart,  :trstop, :trexecdate, :trrequirement, :trtrackid, :testcase_i
  belongs_to :testcase
end
