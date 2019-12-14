class Projects < ActiveRecord::Migration[5.2]
  def change
  	 	create_table :projects do |y|
  		y.string :project_name 
  		y.string :description
  	end
  end
end
