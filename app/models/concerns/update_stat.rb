require 'active_support/concern'
module UpdateStat
  extend ActiveSupport::Concern
  def update_stat
    stat_today = stats.where(date: Date.current)
    stat_today = stat_today.first || stat_today.build
    stat_today.increment!(:number)
  end
end