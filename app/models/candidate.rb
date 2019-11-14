class Candidate < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :gender, acceptance: { accept: ['Male', 'Female'], message: 'must be Male or Female' }



end
