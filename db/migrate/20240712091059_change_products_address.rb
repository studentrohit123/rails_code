class ChangeProductsAddress < ActiveRecord::Migration[7.1]
  def up
    change_table :products do |t|
      t.change :address, :integer
    end
  end

  def down
    change_table :products do |t|
      t.change :address, :string
    end
  end
end
