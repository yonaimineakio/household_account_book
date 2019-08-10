class DropTableToIncomeExpenseRelationship < ActiveRecord::Migration[5.2]
  def change
    drop_table :income_expense_relations
  end
end
