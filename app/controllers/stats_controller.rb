class StatsController < ApplicationController

  def index
    @stats = @statable.stats
  end

end
