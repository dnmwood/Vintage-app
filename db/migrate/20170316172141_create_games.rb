class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :quantity
      t.string :system
      t.string :condition

      t.timestamps
    end
  end
end
