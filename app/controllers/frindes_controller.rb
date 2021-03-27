class FrindesController < ApplicationController
  before_action :set_frinde, only: %i[ show edit update destroy ]

  # GET /frindes or /frindes.json
  def index
    @frindes = Frinde.all
  end

  # GET /frindes/1 or /frindes/1.json
  def show
  end

  # GET /frindes/new
  def new
    @frinde = Frinde.new
  end

  # GET /frindes/1/edit
  def edit
  end

  # POST /frindes or /frindes.json
  def create
    @frinde = Frinde.new(frinde_params)

    respond_to do |format|
      if @frinde.save
        format.html { redirect_to @frinde, notice: "Frinde was successfully created." }
        format.json { render :show, status: :created, location: @frinde }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frinde.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frindes/1 or /frindes/1.json
  def update
    respond_to do |format|
      if @frinde.update(frinde_params)
        format.html { redirect_to @frinde, notice: "Frinde was successfully updated." }
        format.json { render :show, status: :ok, location: @frinde }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frinde.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frindes/1 or /frindes/1.json
  def destroy
    @frinde.destroy
    respond_to do |format|
      format.html { redirect_to frindes_url, notice: "Frinde was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frinde
      @frinde = Frinde.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frinde_params
      params.require(:frinde).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
