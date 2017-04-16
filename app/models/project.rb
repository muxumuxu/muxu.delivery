class Project < ApplicationRecord
  has_many :milestones, dependent: :destroy
  validates :name, presence: true
  validates :short_description, presence: true
end
