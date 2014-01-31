class TcstatusesController < ApplicationController
  before_action :set_tcstatus, only: [:show, :edit, :update, :destroy]

  # GET /tcstatuses
  # GET /tcstatuses.json
  def index
    @tcstatuses = Tcstatus.all
  end

  # GET /tcstatuses/1
  # GET /tcstatuses/1.json
  def show
  end

  # GET /tcstatuses/new
  def new
    @tcstatus = Tcstatus.new
  end

  # GET /tcstatuses/1/edit
  def edit
  end

  # POST /tcstatuses
  # POST /tcstatuses.json
  def create
    @tcstatus = Tcstatus.new(tcstatus_params)

    respond_to do |format|
      if @tcstatus.save
        format.html { redirect_to @tcstatus, notice: 'Tcstatus was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tcstatus }
      else
        format.html { render action: 'new' }
        format.json { render json: @tcstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tcstatuses/1
  # PATCH/PUT /tcstatuses/1.json
  def update
    respond_to do |format|
      if @tcstatus.update(tcstatus_params)
        format.html { redirect_to @tcstatus, notice: 'Tcstatus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tcstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tcstatuses/1
  # DELETE /tcstatuses/1.json
  def destroy
    @tcstatus.destroy
    respond_to do |format|
      format.html { redirect_to tcstatuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tcstatus
      @tcstatus = Tcstatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tcstatus_params
      params.require(:tcstatus).permit(:tcstatusname)
    end
end
