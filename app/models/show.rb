class Show < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :schedule, presence: true
  validates :user, presence: true
end
