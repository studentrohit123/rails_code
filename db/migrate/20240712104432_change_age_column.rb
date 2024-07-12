class ChangeAgeColumn < ActiveRecord::Migration[7.1]
  def change
    change_table :students do |t|
      
      t.rename :integer, :enrollement
    end
  end
end
