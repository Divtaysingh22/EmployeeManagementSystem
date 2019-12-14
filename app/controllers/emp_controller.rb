class EmpController < ApplicationController
  def employee
  end

  def project
  end

  def department
  end

  def contact
  end
def create
  @emp23 = Emp.new(emp_params)
  if @emp23.save
   flash[:notice] = "Data was successfully created"
   redirect_to project_path(@emp23)
  else
   render 'project'
  end	

end
end