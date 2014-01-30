class ReqstatusesController < ApplicationController
  before_action :set_reqstatus, only: [:show, :edit, :update, :destroy]

  # GET /reqstatuses
  # GET /reqstatuses.json
  def index
    @reqstatuses = Reqstatus.all
  end

  # GET /reqstatuses/1
  # GET /reqstatuses/1.json
  def show
  end

  # GET /reqstatuses/new
  def new
    @reqstatus = Reqstatus.new
  end

  # GET /reqstatuses/1/edit
  def edit
  end

  # POST /reqstatuses
  # POST /reqstatuses.json
  def create
    @reqstatus = Reqstatus.new(reqstatus_params)

    respond_to do |format|
      if @reqstatus.save
        format.html { redirect_to @reqstatus, notice: 'Reqstatus was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reqstatus }
      else
        format.html { render action: 'new' }
        format.json { render json: @reqstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reqstatuses/1
  # PATCH/PUT /reqstatuses/1.json
  def update
    respond_to do |format|
      if @reqstatus.update(reqstatus_params)
        format.html { redirect_to @reqstatus, notice: 'Reqstatus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reqstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reqstatuses/1
  # DELETE /reqstatuses/1.json
  def destroy
    @reqstatus.destroy
    respond_to do |format|
      format.html { redirect_to reqstatuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reqstatus
      @reqstatus = Reqstatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reqstatus_params
      params.require(:reqstatus).permit(:reqstatusname)
    end
end
