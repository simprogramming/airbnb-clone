class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :location
      t.string :availability
      t.string :price
      t.integer :capacity
      t.text :description
      t.string :type
      t.references :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
