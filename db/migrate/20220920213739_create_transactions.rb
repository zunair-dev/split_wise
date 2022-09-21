class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.integer :currency, default: 0, null: false

      t.timestamps
    end
  end
end
