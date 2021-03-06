# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140203210104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "browsers", force: true do |t|
    t.string   "brname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "os", force: true do |t|
    t.string   "osname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reqdevstatuses", force: true do |t|
    t.string   "reqdevstatusname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reqdifficulties", force: true do |t|
    t.string   "reqdifficultyname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reqpriorities", force: true do |t|
    t.string   "reqpriorityname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reqstatuses", force: true do |t|
    t.string   "reqstatusname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requirements", force: true do |t|
    t.string   "reqtitle"
    t.string   "reqowner"
    t.string   "reqstatus"
    t.string   "reqpriority"
    t.string   "reqdifficulty"
    t.string   "reqdevstatus"
    t.string   "reqtestcoverage"
    t.string   "reqrelease"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "reqtrackid"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "steps", force: true do |t|
    t.string   "stepname"
    t.integer  "testcase_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "steps", ["testcase_id"], name: "index_steps_on_testcase_id", using: :btree

  create_table "tcstatuses", force: true do |t|
    t.string   "tcstatusname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tcsubsystems", force: true do |t|
    t.string   "tcsubsystemname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testcases", force: true do |t|
    t.string   "tctitle"
    t.text     "tcdescription"
    t.text     "tcprecondition"
    t.string   "tcdata"
    t.string   "tcexpectedresults"
    t.string   "tcsubsystem"
    t.string   "tcstatus"
    t.text     "tcpostcondition"
    t.string   "tcauthor"
    t.boolean  "tcactive"
    t.string   "tcreqreference"
    t.string   "tcmodifiedby"
    t.date     "tcexecdate"
    t.datetime "tcstarttime"
    t.datetime "tcstoptime"
    t.string   "tcstep"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testruns", force: true do |t|
    t.string   "trname"
    t.text     "trdescription"
    t.string   "trfeature"
    t.string   "tester"
    t.string   "testtype"
    t.string   "trstatus"
    t.string   "trpriority"
    t.string   "tros"
    t.string   "trbrowser"
    t.string   "trrisk"
    t.time     "trstart"
    t.time     "trstop"
    t.datetime "trexecdate"
    t.string   "trrequirement"
    t.string   "trtrackid"
    t.integer  "testcase_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "testruns", ["testcase_id"], name: "index_testruns_on_testcase_id", using: :btree

  create_table "testsuites", force: true do |t|
    t.string   "tsname"
    t.text     "tsdescription"
    t.string   "tsfeature"
    t.string   "tstester"
    t.string   "tstesttype"
    t.string   "tsstatus"
    t.string   "tspriority"
    t.string   "tsos"
    t.string   "tsbrowser"
    t.string   "tsrisk"
    t.datetime "tsstart"
    t.datetime "tsstop"
    t.date     "tsexecdate"
    t.string   "tsrequirement"
    t.string   "tstrackid"
    t.integer  "testrun_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "testsuites", ["testrun_id"], name: "index_testsuites_on_testrun_id", using: :btree

  create_table "testtypes", force: true do |t|
    t.string   "tname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trpriorities", force: true do |t|
    t.string   "trpriorityname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trrisks", force: true do |t|
    t.string   "trriskname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trstatuses", force: true do |t|
    t.string   "trstatusname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trsubsytems", force: true do |t|
    t.string   "trsubname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "signed_up_on"
    t.datetime "last_signed_in_on"
    t.string   "password_reset_token"
    t.datetime "password_expires_after"
    t.string   "authentication_token"
  end

end
