class RemoveExpenseColumnFromExpenses < ActiveRecord::Migration[5.2]
  def change
    remove_column :expenses, :expense, :integer
  end
end
