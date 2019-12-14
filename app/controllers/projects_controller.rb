class ProjectsController < ApplicationController
def new 
  	@projects = Project.new
  end
def index #action
  	@projects = Project.all
  end
def show
    @projects = Project.find_by(id: params[:id])

end

def edit
  @projects = Project.find_by(id: params[:id])
  end 

def update
      @projects = Project.find_by(id: params[:id])
if @projects.update(emp_params)


      redirect_to "/projects", :notice=>"your post has been updated"
  else
    #render "new"
    redirect_to "/projects"
  end
end

  
 def create #action
	@projects = Project.new(emp_params)
	if @projects.save
		redirect_to "/projects"
	else
		render(:new)
	end  	
  end
  def destroy
  	@projects = Project.find_by(id: params[:id])
  	if @projects.destroy
  		redirect_to "/projects"
	else
		redirect_to "/projects"
	end
  end
  def emp_params
  	params.require(:project).permit(:project_name, :description)
  end
end