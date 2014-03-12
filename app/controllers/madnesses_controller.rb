class MadnessesController < ApplicationController
  before_action :set_madness, only: [:show, :edit, :update, :destroy]

  # GET /madnesses
  # GET /madnesses.json
  def index
    @madnesses = Madness.all
  end

  # GET /madnesses/1
  # GET /madnesses/1.json
  def show
  end

  # GET /madnesses/new
  def new
    @madness = Madness.new
  end

  # GET /madnesses/1/edit
  def edit
  end

  # POST /madnesses
  # POST /madnesses.json
  def create
    @madness = Madness.new(madness_params)

    respond_to do |format|
      if @madness.save
        format.html { redirect_to @madness, notice: 'Madness was successfully created.' }
        format.json { render action: 'show', status: :created, location: @madness }
      else
        format.html { render action: 'new' }
        format.json { render json: @madness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /madnesses/1
  # PATCH/PUT /madnesses/1.json
  def update
    respond_to do |format|
      if @madness.update(madness_params)
        format.html { redirect_to @madness, notice: 'Madness was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @madness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /madnesses/1
  # DELETE /madnesses/1.json
  def destroy
    @madness.destroy
    respond_to do |format|
      format.html { redirect_to madnesses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_madness
      @madness = Madness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def madness_params
      params.require(:madness).permit(:being)
    end
end
