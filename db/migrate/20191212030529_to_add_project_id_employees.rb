class ToAddProjectIdEmployees < ActiveRecord::Migration[5.2]
  def change
  	  	add_column :employees, :project_id, :integer
  end
end
