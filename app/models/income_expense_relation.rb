class IncomeExpenseRelation < ApplicationRecord
  belong_to :incomes
  belong_to :expenses
end
