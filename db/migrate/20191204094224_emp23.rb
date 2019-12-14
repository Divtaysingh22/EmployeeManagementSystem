class Emp23 < ActiveRecord::Migration[5.2]
  def change
    create_table :emp23 do |t|
      t.string :firstname
      t.string :lastname
      t.integer :empid
      t.string :qualification
      t.string :department

      t.timestamps
    end
end
end