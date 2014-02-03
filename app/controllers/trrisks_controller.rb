class TrrisksController < ApplicationController
  before_action :set_trrisk, only: [:show, :edit, :update, :destroy]

  # GET /trrisks
  # GET /trrisks.json
  def index
    @trrisks = Trrisk.all
  end

  # GET /trrisks/1
  # GET /trrisks/1.json
  def show
  end

  # GET /trrisks/new
  def new
    @trrisk = Trrisk.new
  end

  # GET /trrisks/1/edit
  def edit
  end

  # POST /trrisks
  # POST /trrisks.json
  def create
    @trrisk = Trrisk.new(trrisk_params)

    respond_to do |format|
      if @trrisk.save
        format.html { redirect_to @trrisk, notice: 'Trrisk was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trrisk }
      else
        format.html { render action: 'new' }
        format.json { render json: @trrisk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trrisks/1
  # PATCH/PUT /trrisks/1.json
  def update
    respond_to do |format|
      if @trrisk.update(trrisk_params)
        format.html { redirect_to @trrisk, notice: 'Trrisk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trrisk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trrisks/1
  # DELETE /trrisks/1.json
  def destroy
    @trrisk.destroy
    respond_to do |format|
      format.html { redirect_to trrisks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trrisk
      @trrisk = Trrisk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trrisk_params
      params.require(:trrisk).permit(:trriskname)
    end
end
