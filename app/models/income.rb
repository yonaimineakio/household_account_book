class Income < ApplicationRecord
  validates :income, presence: true
  has_many :expenses, foreign_key: "income_id",dependent: :destroy
end
