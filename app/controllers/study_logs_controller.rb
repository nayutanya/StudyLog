class StudyLogsController < ApplicationController
  before_action :set_study_log, only: %i[ show edit update destroy ]

  # GET /study_logs or /study_logs.json
  def index
    @study_logs = StudyLog.all
  end

  # GET /study_logs/1 or /study_logs/1.json
  def show
  end

  # GET /study_logs/new
  def new
    @study_log = StudyLog.new
  end

  # GET /study_logs/1/edit
  def edit
  end

  # POST /study_logs or /study_logs.json
  def create
    @study_log = StudyLog.new(study_log_params)
  
    respond_to do |format|
      if @study_log.save
        format.html { redirect_to root_path, notice: "記録しました！" }
        format.json { render json: @study_log, status: :created } # JSからの自動保存用
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @study_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_logs/1 or /study_logs/1.json
  def update
    respond_to do |format|
      if @study_log.update(study_log_params)
        format.html { redirect_to @study_log, notice: "Study log was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @study_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @study_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_logs/1 or /study_logs/1.json
  def destroy
    @study_log.destroy!

    respond_to do |format|
      format.html { redirect_to study_logs_path, notice: "Study log was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_log
      @study_log = StudyLog.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def study_log_params
      params.expect(study_log: [ :task_id, :started_at, :ended_at, :duration ])
    end
end
