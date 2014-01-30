class ReqdevstatusesController < ApplicationController
  before_action :set_reqdevstatus, only: [:show, :edit, :update, :destroy]

  # GET /reqdevstatuses
  # GET /reqdevstatuses.json
  def index
    @reqdevstatuses = Reqdevstatus.all
  end

  # GET /reqdevstatuses/1
  # GET /reqdevstatuses/1.json
  def show
  end

  # GET /reqdevstatuses/new
  def new
    @reqdevstatus = Reqdevstatus.new
  end

  # GET /reqdevstatuses/1/edit
  def edit
  end

  # POST /reqdevstatuses
  # POST /reqdevstatuses.json
  def create
    @reqdevstatus = Reqdevstatus.new(reqdevstatus_params)

    respond_to do |format|
      if @reqdevstatus.save
        format.html { redirect_to @reqdevstatus, notice: 'Reqdevstatus was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reqdevstatus }
      else
        format.html { render action: 'new' }
        format.json { render json: @reqdevstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reqdevstatuses/1
  # PATCH/PUT /reqdevstatuses/1.json
  def update
    respond_to do |format|
      if @reqdevstatus.update(reqdevstatus_params)
        format.html { redirect_to @reqdevstatus, notice: 'Reqdevstatus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reqdevstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reqdevstatuses/1
  # DELETE /reqdevstatuses/1.json
  def destroy
    @reqdevstatus.destroy
    respond_to do |format|
      format.html { redirect_to reqdevstatuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reqdevstatus
      @reqdevstatus = Reqdevstatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reqdevstatus_params
      params.require(:reqdevstatus).permit(:reqdevstatusname)
    end
end
