class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, :category, presence: true
  CATEGORY = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: CATEGORY }
end
