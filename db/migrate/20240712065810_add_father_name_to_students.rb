class AddFatherNameToStudents < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :father_name, :string
    add_column :students, :string, :string
  end
end
