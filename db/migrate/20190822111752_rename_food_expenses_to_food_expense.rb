class RenameFoodExpensesToFoodExpense < ActiveRecord::Migration[5.2]
  def change
    rename_column :expenses, :food_expenses, :food_expense
  end
end
