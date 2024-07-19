class CreateJoinTablePhoneNumber < ActiveRecord::Migration[7.1]
  def change
    create_join_table :phones, :numbers do |t|
      # t.index [:phone_id, :number_id]
      # t.index [:number_id, :phone_id]
    end
  end
end
