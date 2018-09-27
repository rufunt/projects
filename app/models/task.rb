class Task < ActiveRecord::Base
  belongs_to :project
  
  validates :content, presence: true
  
  def completed?
    !completed_at.blank?
  end
end
