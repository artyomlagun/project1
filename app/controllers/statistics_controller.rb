class StatisticsController < ApplicationController
  before_action :set_statistic, only: [:show, :destroy]
  before_action :set_project, only: [:show, :destroy]
  before_action :set_task, only: [:show, :destroy]
  # GET /statistics
  # GET /statistics.json
  def index
    @statistics = Statistic.all
    if params[:project_id]
      @project = Project.find(params[:project_id])
    end
    if params[:task_id]
      @task = Task.find(params[:task_id])
    end
  end

  # GET /statistics/1
  # GET /statistics/1.json
  def show
  end

  # DELETE /statistics/1
  # DELETE /statistics/1.json
  def destroy
    @statistic.destroy
    respond_to do |format|
      format.html { redirect_to project_statistics_url(@project) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statistic
      @statistic = Statistic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statistic_params
      params.require(:statistic).permit(:date, :project_id, :task_id, :number)
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_task
      @task = Task.find(params[:task_id])
    end

end
