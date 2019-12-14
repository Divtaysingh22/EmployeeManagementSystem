class EmployeesController < ApplicationController
  def index #action

  	@dev = Employee.all
  end

  def create #action
  	@employee = Employee.new(emp_params)
  	if @employee.save
  		redirect_to "/employees"
  	else
  		render(:new)
  	end  	
  end

  def show

    @employees = Employee.find_by(id: params[:id])
  end 

  def edit
   
  @employee = Employee.find_by(id: params[:id])
  end 

  def new
  	@employee = Employee.new
  end

  def update
      @employees = Employee.find_by(id: params[:id])
if @employees.update(emp_params)

redirect_to "/employees", :notice=>"your post has been updated"
  else
    #render "new"
    redirect_to "/employees"
  end
end


  def destroy
  	@employee = Employee.find_by(id: params[:id])
  	if @employee.destroy
  		redirect_to "/employees"
	else
		redirect_to "/employees"
	end
  end

  private

  def emp_params
  	params.require(:employee).permit(:name, :last_name, :age, :department_id, :project_id)
  end
end