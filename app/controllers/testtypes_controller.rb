class TesttypesController < ApplicationController
  before_action :set_testtype, only: [:show, :edit, :update, :destroy]

  # GET /testtypes
  # GET /testtypes.json
  def index
    @testtypes = Testtype.all
  end

  # GET /testtypes/1
  # GET /testtypes/1.json
  def show
  end

  # GET /testtypes/new
  def new
    @testtype = Testtype.new
  end

  # GET /testtypes/1/edit
  def edit
  end

  # POST /testtypes
  # POST /testtypes.json
  def create
    @testtype = Testtype.new(testtype_params)

    respond_to do |format|
      if @testtype.save
        format.html { redirect_to @testtype, notice: 'Testtype was successfully created.' }
        format.json { render action: 'show', status: :created, location: @testtype }
      else
        format.html { render action: 'new' }
        format.json { render json: @testtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testtypes/1
  # PATCH/PUT /testtypes/1.json
  def update
    respond_to do |format|
      if @testtype.update(testtype_params)
        format.html { redirect_to @testtype, notice: 'Testtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @testtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testtypes/1
  # DELETE /testtypes/1.json
  def destroy
    @testtype.destroy
    respond_to do |format|
      format.html { redirect_to testtypes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testtype
      @testtype = Testtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testtype_params
      params.require(:testtype).permit(:tname)
    end
end
