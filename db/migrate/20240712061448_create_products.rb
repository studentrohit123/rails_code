class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :part_number
      t.string :address
      t.string :email 

      t.timestamps
    end
  end
end
