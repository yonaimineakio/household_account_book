class AddEntertaimentExpenseToExpenses < ActiveRecord::Migration[5.2]
  def change
    add_column :expenses, :entertaiment_expense, :integer
  end
end
