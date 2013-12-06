class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.string :name
      t.text :description
      t.integer :cost
      t.string :image_url

      t.timestamps
    end
  end
end
