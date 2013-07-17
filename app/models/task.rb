class Task < ActiveRecord::Base
  belongs_to :project
  has_many :stats, :as => :statable
  validates :project_id, :name, :description, :priority, :presence => true
end
