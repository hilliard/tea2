class TestrunsController < ApplicationController
  before_action :set_testrun, only: [:show, :edit, :update, :destroy]

  # GET /testruns
  # GET /testruns.json
  def index
    @testruns = Testrun.all
  end

  # GET /testruns/1
  # GET /testruns/1.json
  def show
  end

  # GET /testruns/new
  def new
    @testrun = Testrun.new
  end

  # GET /testruns/1/edit
  def edit
  end

  # POST /testruns
  # POST /testruns.json
  def create
    @testrun = Testrun.new(testrun_params)

    respond_to do |format|
      if @testrun.save
        format.html { redirect_to @testrun, notice: 'Testrun was successfully created.' }
        format.json { render action: 'show', status: :created, location: @testrun }
      else
        format.html { render action: 'new' }
        format.json { render json: @testrun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testruns/1
  # PATCH/PUT /testruns/1.json
  def update
    respond_to do |format|
      if @testrun.update(testrun_params)
        format.html { redirect_to @testrun, notice: 'Testrun was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @testrun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testruns/1
  # DELETE /testruns/1.json
  def destroy
    @testrun.destroy
    respond_to do |format|
      format.html { redirect_to testruns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testrun
      @testrun = Testrun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testrun_params
      params.require(:testrun).permit(:trname, :trdescription, :trfeature, :tester, :testtype, :trstatus, :trpriority, :tros, :trbrowser, :trrisk, :trstart, :trexecdate, :trstop, :trrequirement, :trtrackid, :testcase_id)
    end
end
