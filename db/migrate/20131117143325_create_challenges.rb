class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.date :start
      t.date :end
      t.integer :points

      t.timestamps
    end
  end
end
