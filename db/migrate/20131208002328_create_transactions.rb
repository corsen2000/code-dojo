class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :user, index: true
      t.references :prize, index: true
      t.integer :cost
      t.boolean :delivered

      t.timestamps
    end
  end
end
