class CreateJoinTableProductsStudents < ActiveRecord::Migration[7.1]
  def change
    create_join_table :Products, :Students do |t|
      # t.index [:product_id, :student_id]
      # t.index [:student_id, :product_id]
      t.string [:name, :name]
      t.string [:string,:email]

    end
  end
end
