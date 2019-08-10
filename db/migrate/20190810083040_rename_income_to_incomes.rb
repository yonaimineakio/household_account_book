class RenameIncomeToIncomes < ActiveRecord::Migration[5.2]
  def change
    rename_table :income, :incomes
  end
end
