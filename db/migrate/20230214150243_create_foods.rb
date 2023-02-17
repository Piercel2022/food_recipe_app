class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :measuring_unit
      t.float :price

      t.timestamps
    end
  end
end