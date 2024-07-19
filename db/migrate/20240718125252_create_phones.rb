class CreatePhones < ActiveRecord::Migration[7.1]
  def change
    create_table :phones do |t|
      t.string :name

      t.timestamps
    end
  end
end
