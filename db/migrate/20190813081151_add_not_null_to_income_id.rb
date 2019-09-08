class AddNotNullToIncomeId < ActiveRecord::Migration[5.2]
  def change
    change_column :expenses, :income_id, :integer, {null:false}
  end
end
