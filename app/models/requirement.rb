class Requirement < ActiveRecord::Base
  attr_accessible :reqtitle, :reqowner, :reqstatus, :reqpriority, :reqdifficulty, :reqdevstatus, :reqtestcoverage, :reqtrackid, :reqrelease
end
