class RemoveStringFromStudents < ActiveRecord::Migration[7.1]
  def change
    remove_column :students, :string, :string
    remove_column :students, :string, :string
  end
end
