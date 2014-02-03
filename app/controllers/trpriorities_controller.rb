class TrprioritiesController < ApplicationController
  before_action :set_trpriority, only: [:show, :edit, :update, :destroy]

  # GET /trpriorities
  # GET /trpriorities.json
  def index
    @trpriorities = Trpriority.all
  end

  # GET /trpriorities/1
  # GET /trpriorities/1.json
  def show
  end

  # GET /trpriorities/new
  def new
    @trpriority = Trpriority.new
  end

  # GET /trpriorities/1/edit
  def edit
  end

  # POST /trpriorities
  # POST /trpriorities.json
  def create
    @trpriority = Trpriority.new(trpriority_params)

    respond_to do |format|
      if @trpriority.save
        format.html { redirect_to @trpriority, notice: 'Trpriority was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trpriority }
      else
        format.html { render action: 'new' }
        format.json { render json: @trpriority.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trpriorities/1
  # PATCH/PUT /trpriorities/1.json
  def update
    respond_to do |format|
      if @trpriority.update(trpriority_params)
        format.html { redirect_to @trpriority, notice: 'Trpriority was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trpriority.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trpriorities/1
  # DELETE /trpriorities/1.json
  def destroy
    @trpriority.destroy
    respond_to do |format|
      format.html { redirect_to trpriorities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trpriority
      @trpriority = Trpriority.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trpriority_params
      params.require(:trpriority).permit(:trpriorityname)
    end
end
