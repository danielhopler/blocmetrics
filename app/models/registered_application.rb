class RegisteredApplication < ApplicationRecord
  belongs_to :user
  has_many :events, dependent: :destroy

  validates :name, presence: true
  validates :url, presence: true
  validates :user, presence: true
end
