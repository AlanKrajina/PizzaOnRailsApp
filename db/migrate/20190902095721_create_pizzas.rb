class CreatePizzas < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :delivery_address
      t.string :delivery_notes
      t.integer :user_id
      t.integer :rating_id

      t.timestamps
    end
  end
end
