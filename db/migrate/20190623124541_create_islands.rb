class CreateIslands < ActiveRecord::Migration[5.2]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :location
      t.string :activities
      t.string :size
      t.integer :price
      t.string :difficulty
      t.string :photo
      t.references :user, foreign_key: true
      t.references :review, foreign_key: true

      t.timestamps
    end
  end
end
