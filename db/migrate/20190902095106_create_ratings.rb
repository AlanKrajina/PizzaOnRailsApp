class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.string :stars
      t.string :comment, default: "No comment available", null: false

      t.timestamps
    end
  end
end
