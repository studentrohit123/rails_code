class CreateAppoinments < ActiveRecord::Migration[7.1]
  def change
    create_table :appoinments do |t|
      t.string :name
      t.string :string
      t.references :physician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
