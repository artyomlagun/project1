#encoding: UTF-8
class Statistic < ActiveRecord::Base
  belongs_to :project
  belongs_to :task
  validates :date, :number, :presence => true
  validates :project_id, :presence => true, :if => -> {self.task_id.blank?}
  validates :task_id, :presence => true, :if => -> {self.project_id.blank?}
  validate :validator_project_id_task_id

  private
  def validator_project_id_task_id
    if project_id && task_id
      errors.add :base, 'Статистика просмотров не может записать просмотры для задач и проектов одновременно!'
    end
  end

end
