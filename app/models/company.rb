class Company < ApplicationRecord
  has_many :jobs
  validates :name, presence: true
  validates :address, presence: true
  validates :industry, presence: true

end
