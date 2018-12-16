class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :logo
      t.text :phone
      t.string :website
      t.string :twitter
      t.string :instagram

      t.timestamps
    end
  end
end
