class StatisticsController < ApplicationController
  before_action :set_statistic, only: [:show]
  before_action :set_project, only: [:show]
  before_action :set_task, only: [:show]
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
