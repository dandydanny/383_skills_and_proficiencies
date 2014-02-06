class Proficiency < ActiveRecord::Base
  # join table
  belongs_to :user
  belongs_to :skills

  validates :experience, :presence => true
  # validates :formal_eduaction, inclusion: [true, false]
  validates :education, :inclusion => {:in => [true, false]} # rails 3
end
