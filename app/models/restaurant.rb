class Restaurant < ApplicationRecord
  CATEGORIES = %w(chinese italian japanese french belgian)
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
