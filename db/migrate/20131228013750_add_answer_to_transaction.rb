class AddAnswerToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :answer, :text
  end
end
