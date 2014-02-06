class Proficiency < ActiveRecord::Base
  belongs_to :user
  belongs_to :skills

  validates :experience, :presence => true
  # validates :formal_eduaction, inclusion: [true, false]
  validates :formal_eduaction, :inclusion => {:in => [true, false]} # rails 3
end
