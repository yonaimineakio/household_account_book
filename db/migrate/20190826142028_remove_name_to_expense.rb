class RemoveNameToExpense < ActiveRecord::Migration[5.2]
  def change
    remove_column :expenses, :name, :string
  end
end
