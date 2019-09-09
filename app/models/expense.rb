class Expense < ApplicationRecord

  belongs_to :income
  validates :income_id, presence: true
  validates :food_expense, presence: true
  validates :entertaiment_expense, presence: true
  validates :mobile_bill, presence: true

end
