class Expense < ApplicationRecord
  belongs_to :income
  validates :expense, presence: true
  validates :income_id, presence: true

end
