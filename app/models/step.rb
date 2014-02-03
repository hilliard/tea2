class Step < ActiveRecord::Base
  attr_accessible :stepname
  belongs_to :testcase
end
