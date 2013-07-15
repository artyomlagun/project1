class Task < ActiveRecord::Base
  belongs_to :project
  has_many :statistics
  validates :project_id, :name, :description, :priority, :presence => true
end
