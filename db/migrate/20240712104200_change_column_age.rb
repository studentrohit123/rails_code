class ChangeColumnAge < ActiveRecord::Migration[7.1]
  def change
    change_column :products, :age, :integer

  end
end
