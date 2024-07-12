class AddDetailsToStudent < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :email, :string
    add_column :students, :string, :string
    add_column :students, :age, :string
    add_column :students, :integer, :string
  end
end
