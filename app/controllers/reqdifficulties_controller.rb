class ReqdifficultiesController < ApplicationController
  before_action :set_reqdifficulty, only: [:show, :edit, :update, :destroy]

  # GET /reqdifficulties
  # GET /reqdifficulties.json
  def index
    @reqdifficulties = Reqdifficulty.all
  end

  # GET /reqdifficulties/1
  # GET /reqdifficulties/1.json
  def show
  end

  # GET /reqdifficulties/new
  def new
    @reqdifficulty = Reqdifficulty.new
  end

  # GET /reqdifficulties/1/edit
  def edit
  end

  # POST /reqdifficulties
  # POST /reqdifficulties.json
  def create
    @reqdifficulty = Reqdifficulty.new(reqdifficulty_params)

    respond_to do |format|
      if @reqdifficulty.save
        format.html { redirect_to @reqdifficulty, notice: 'Reqdifficulty was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reqdifficulty }
      else
        format.html { render action: 'new' }
        format.json { render json: @reqdifficulty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reqdifficulties/1
  # PATCH/PUT /reqdifficulties/1.json
  def update
    respond_to do |format|
      if @reqdifficulty.update(reqdifficulty_params)
        format.html { redirect_to @reqdifficulty, notice: 'Reqdifficulty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reqdifficulty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reqdifficulties/1
  # DELETE /reqdifficulties/1.json
  def destroy
    @reqdifficulty.destroy
    respond_to do |format|
      format.html { redirect_to reqdifficulties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reqdifficulty
      @reqdifficulty = Reqdifficulty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reqdifficulty_params
      params.require(:reqdifficulty).permit(:reqdifficultyname)
    end
end
