class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.references :user, index: true
      t.references :challenge, index: true
      t.string :title
      t.text :description
      t.string :source
      t.string :demo

      t.timestamps
    end
  end
end
