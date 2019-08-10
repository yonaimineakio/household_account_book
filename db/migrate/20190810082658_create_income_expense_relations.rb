class CreateIncomeExpenseRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :income_expense_relations do |t|
      t.references :income
      t.references :expense

      t.timestamps
    end
  end
end
