class AddQuestionToPrize < ActiveRecord::Migration
  def change
    add_column :prizes, :question, :text
  end
end
