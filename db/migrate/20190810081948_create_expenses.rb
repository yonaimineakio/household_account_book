class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.integer :expense, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
