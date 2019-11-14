class Jobquestion < ApplicationRecord
  belongs_to :job
  validates :question, length: { maximum: 500 }
end
