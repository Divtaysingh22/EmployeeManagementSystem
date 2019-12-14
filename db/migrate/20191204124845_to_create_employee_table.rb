class ToCreateEmployeeTable < ActiveRecord::Migration[5.2]
  def change
  	create_table :employees do |t|
  		t.string :name 
  		t.string :last_name 
  		t.string :emp_id 
  		t.text :education 
  		t.integer :age 
  		t.string :department 

  	end
  end
end
