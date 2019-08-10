class RemoveColumnToIncome < ActiveRecord::Migration[5.2]
  def change
    remove_column :incomes, :expense, :integer
  end
end
