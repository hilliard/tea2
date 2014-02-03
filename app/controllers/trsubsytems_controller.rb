class TrsubsytemsController < ApplicationController
  before_action :set_trsubsytem, only: [:show, :edit, :update, :destroy]

  # GET /trsubsytems
  # GET /trsubsytems.json
  def index
    @trsubsytems = Trsubsytem.all
  end

  # GET /trsubsytems/1
  # GET /trsubsytems/1.json
  def show
  end

  # GET /trsubsytems/new
  def new
    @trsubsytem = Trsubsytem.new
  end

  # GET /trsubsytems/1/edit
  def edit
  end

  # POST /trsubsytems
  # POST /trsubsytems.json
  def create
    @trsubsytem = Trsubsytem.new(trsubsytem_params)

    respond_to do |format|
      if @trsubsytem.save
        format.html { redirect_to @trsubsytem, notice: 'Trsubsytem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trsubsytem }
      else
        format.html { render action: 'new' }
        format.json { render json: @trsubsytem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trsubsytems/1
  # PATCH/PUT /trsubsytems/1.json
  def update
    respond_to do |format|
      if @trsubsytem.update(trsubsytem_params)
        format.html { redirect_to @trsubsytem, notice: 'Trsubsytem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trsubsytem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trsubsytems/1
  # DELETE /trsubsytems/1.json
  def destroy
    @trsubsytem.destroy
    respond_to do |format|
      format.html { redirect_to trsubsytems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trsubsytem
      @trsubsytem = Trsubsytem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trsubsytem_params
      params.require(:trsubsytem).permit(:trsubname)
    end
end
