class TrstatusesController < ApplicationController
  before_action :set_trstatus, only: [:show, :edit, :update, :destroy]

  # GET /trstatuses
  # GET /trstatuses.json
  def index
    @trstatuses = Trstatus.all
  end

  # GET /trstatuses/1
  # GET /trstatuses/1.json
  def show
  end

  # GET /trstatuses/new
  def new
    @trstatus = Trstatus.new
  end

  # GET /trstatuses/1/edit
  def edit
  end

  # POST /trstatuses
  # POST /trstatuses.json
  def create
    @trstatus = Trstatus.new(trstatus_params)

    respond_to do |format|
      if @trstatus.save
        format.html { redirect_to @trstatus, notice: 'Trstatus was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trstatus }
      else
        format.html { render action: 'new' }
        format.json { render json: @trstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trstatuses/1
  # PATCH/PUT /trstatuses/1.json
  def update
    respond_to do |format|
      if @trstatus.update(trstatus_params)
        format.html { redirect_to @trstatus, notice: 'Trstatus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trstatuses/1
  # DELETE /trstatuses/1.json
  def destroy
    @trstatus.destroy
    respond_to do |format|
      format.html { redirect_to trstatuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trstatus
      @trstatus = Trstatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trstatus_params
      params.require(:trstatus).permit(:trstatusname)
    end
end
