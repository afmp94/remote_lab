class LabLedsController < ApplicationController
  before_action :set_lab_led, only: [:show, :edit, :update, :destroy]

  # GET /lab_leds
  # GET /lab_leds.json
  def index
    @lab_leds = LabLed.all
  end

  # GET /lab_leds/1
  # GET /lab_leds/1.json
  def show
  end

  # GET /lab_leds/new
  def new
    @lab_led = LabLed.new
  end

  # GET /lab_leds/1/edit
  def edit
  end

  # POST /lab_leds
  # POST /lab_leds.json
  def create
    @lab_led = LabLed.new(lab_led_params)

    respond_to do |format|
      if @lab_led.save
        format.html { redirect_to @lab_led, notice: 'Lab led was successfully created.' }
        format.json { render :show, status: :created, location: @lab_led }
      else
        format.html { render :new }
        format.json { render json: @lab_led.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_leds/1
  # PATCH/PUT /lab_leds/1.json
  def update
    respond_to do |format|
      if @lab_led.update(lab_led_params)
        format.html { redirect_to @lab_led, notice: 'Lab led was successfully updated.' }
        format.json { render :show, status: :ok, location: @lab_led }
      else
        format.html { render :edit }
        format.json { render json: @lab_led.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_leds/1
  # DELETE /lab_leds/1.json
  def destroy
    @lab_led.destroy
    respond_to do |format|
      format.html { redirect_to lab_leds_url, notice: 'Lab led was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_led
      @lab_led = LabLed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_led_params
      params.require(:lab_led).permit(:Experimient_test_id)
    end
end
