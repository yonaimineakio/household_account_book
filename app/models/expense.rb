class Expense < ApplicationRecord
  belongs_to :income
  validates :expense, presence: true
  validates :name, presence: true

end
