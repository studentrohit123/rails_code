class CreateNumbers < ActiveRecord::Migration[7.1]
  def change
    create_table :numbers do |t|
      t.string :contect

      t.timestamps
    end
  end
end
