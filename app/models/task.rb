class Task < ActiveRecord::Base
  belongs_to :project
  has_many :stats, :as => :statable
  validates :project_id, :name, :description, :priority, :presence => true

  def update_stat
    stat_today = stats.where(date: Date.current)
    stat_today = stat_today.first || stat_today.build
    stat_today.increment!(:number)
  end
end
