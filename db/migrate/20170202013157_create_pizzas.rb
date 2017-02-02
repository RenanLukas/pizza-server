class CreatePizzas < ActiveRecord::Migration[5.0]
  def change
    create_table :pizzas do |t|
      t.primary_key :id
      t.string :name
      t.string :description
      t.string :imageUrl
      t.decimal :price
    end
  end
end
