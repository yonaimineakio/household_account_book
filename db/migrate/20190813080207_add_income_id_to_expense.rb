class AddIncomeIdToExpense < ActiveRecord::Migration[5.2]
  def change

    add_column :expenses, :income_id, :integer

  end
end
