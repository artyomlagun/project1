class Project < ActiveRecord::Base
  has_many :tasks
  has_many :stats, :as => :statable
  validates :name, :description, :presence => true

  def update_stat
    stat_today = stats.where(date: Date.current)
    stat_today = stat_today.first || stat_today.build
    stat_today.increment!(:number)
  end

end
