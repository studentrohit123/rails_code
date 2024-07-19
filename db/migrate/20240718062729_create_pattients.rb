class CreatePattients < ActiveRecord::Migration[7.1]
  def change
    create_table :pattients do |t|
      t.string :name
      t.string :string
      t.references :appoinments, null: false, foreign_key: true

      t.timestamps
    end
  end
end
