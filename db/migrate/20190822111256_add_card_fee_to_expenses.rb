class AddCardFeeToExpenses < ActiveRecord::Migration[5.2]
  add_column :expenses, :card_fee, :integer
  def change
  end
end
