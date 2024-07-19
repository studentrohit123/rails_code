class Delete < ActiveRecord::Migration[7.1]
  def change

    drop_table :patients
  end
end
