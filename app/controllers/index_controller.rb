class IndexController < ApplicationController
  def show
    @projects = Project.includes(:tasks)
    @teams = Team.scoped
  end
end
