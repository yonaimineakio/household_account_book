class RenameMoneyToIncome < ActiveRecord::Migration[5.2]
  def change
    rename_table :money, :income
  end
end
