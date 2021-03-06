class Proficiency < ActiveRecord::Base
  # join table, belongs to other models.
  # model name is lowercase singular
  belongs_to :user
  belongs_to :skill

  validates :experience, :presence => true
  # validates :formal_eduaction, inclusion: [true, false]
  validates :education, :inclusion => {:in => [true, false]} # rails 3
end
