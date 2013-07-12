class Task < ActiveRecord::Base
  belongs_to :project
  validates :project_id, :name, :description, :priority, :presence => true
end
