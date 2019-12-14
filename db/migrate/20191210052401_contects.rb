class Contects < ActiveRecord::Migration[5.2]
  def change
  	create_table :contects do |y|
  		y.string :name 
  		y.string :email
  		y.integer :mobile
  		y.string  :city
        y.string  :state
  end
end
end