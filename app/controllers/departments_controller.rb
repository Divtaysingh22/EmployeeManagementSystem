class DepartmentsController < ApplicationController
def new 
  	@departments = Department.new
  end

def index #action
  	@departments = Department.all
  end

def show
      @departments = Department.find_by(id: params[:id])

end
def edit 
      @departments = Department.find_by(id: params[:id])
end

  
 def create #action
	@departments = Department.new(emp_params)
	if @departments.save
		redirect_to "/departments"
	else
		render(:new)
	end  	
  end

  def update
      @departments = Department.find_by(id: params[:id])
if @departments.update(emp_params)


      redirect_to "/departments", :notice=>"your post has been updated"
  else
    #render "new"
    redirect_to "/departments"
  end
end


  def destroy
  	@departments = Department.find_by(id: params[:id])
  	if @departments.destroy
  		redirect_to "/departments"
	else
		redirect_to "/departments"
	end
  end

  def emp_params
  	params.require(:department).permit(:department_name, :department_type,:member_strength,:description)
  end
end

