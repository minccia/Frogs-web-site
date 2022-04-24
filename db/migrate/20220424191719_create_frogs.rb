class CreateFrogs < ActiveRecord::Migration[7.0]
  def change
    create_table :frogs do |t|
      t.string :name
      t.string :scientific_name
      t.integer :age
      t.boolean :on_sale

      t.timestamps
    end
  end
end
