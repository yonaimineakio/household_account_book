class AddMobileBillToExpenses < ActiveRecord::Migration[5.2]
  def change
    add_column :expenses, :mobile_bill, :integer
  end
end
