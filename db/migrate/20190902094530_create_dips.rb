class CreateDips < ActiveRecord::Migration[6.0]
  def change
    create_table :dips do |t|
      t.string :name
      t.integer :pizza_id

      t.timestamps
    end
  end
end
