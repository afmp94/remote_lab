class ExperimentTestsController < ApplicationController
  before_action :set_experiment_test, only: [:show, :edit, :update, :destroy]

  # GET /experiment_tests
  # GET /experiment_tests.json
  def index
    @experiment_tests = ExperimentTest.all
  end

  # GET /experiment_tests/1
  # GET /experiment_tests/1.json
  def show
  end

  # GET /experiment_tests/new
  def new
    @experiment_test = ExperimentTest.new
  end

  # GET /experiment_tests/1/edit
  def edit
  end

  # POST /experiment_tests
  # POST /experiment_tests.json
  def create
    @experiment_test = ExperimentTest.new(experiment_test_params)

    respond_to do |format|
      if @experiment_test.save
        format.html { redirect_to @experiment_test, notice: 'Experiment test was successfully created.' }
        format.json { render :show, status: :created, location: @experiment_test }
      else
        format.html { render :new }
        format.json { render json: @experiment_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experiment_tests/1
  # PATCH/PUT /experiment_tests/1.json
  def update
    respond_to do |format|
      if @experiment_test.update(experiment_test_params)
        format.html { redirect_to @experiment_test, notice: 'Experiment test was successfully updated.' }
        format.json { render :show, status: :ok, location: @experiment_test }
      else
        format.html { render :edit }
        format.json { render json: @experiment_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiment_tests/1
  # DELETE /experiment_tests/1.json
  def destroy
    @experiment_test.destroy
    respond_to do |format|
      format.html { redirect_to experiment_tests_url, notice: 'Experiment test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experiment_test
      @experiment_test = ExperimentTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experiment_test_params
      params.require(:experiment_test).permit(:lab_led_id)
    end
end
