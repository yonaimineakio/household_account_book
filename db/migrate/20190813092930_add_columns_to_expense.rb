class AddColumnsToExpense < ActiveRecord::Migration[5.2]
  def change
    add_column :expenses, :food_expenses, :integer
  end
end
