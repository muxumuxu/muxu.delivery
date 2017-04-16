class Milestone < ApplicationRecord
  belongs_to :project
  validates :name, presence: true
  validates :status, presence: true
  validates :delivery_date, presence: true
end
