class Departments < ActiveRecord::Migration[5.2]
  def change
  	 	create_table :departments do |y|
  		y.string :department_name 
  		y.string :department_type
  		y.integer :member_strength
  		y.string  :description
end
  	end
end
