class ContectsController < ApplicationController
def new 
  	@contects = Contect.new
  end

def index #action
  	@contects = Contect.all
  end

def show
  	@contects = Contect.find_by(id: params[:id])

end

def edit
	  	@contects = Contect.find_by(id: params[:id])

end


# def update
#   if @contects.update(contect_params)
#    flash[:notice] = "Article was updated"
#    redirect_to contect_path(@contects)
#   else
#    flash[:notice] = "Article was not updated"
#    render 'edit'
#   end
# end

def update
	  	@contects = Contect.find_by(id: params[:id])
if @contects.update(emp_params)


  		redirect_to "/contects", :notice=>"your post has been updated"
	else
		#render "new"
		redirect_to "/contects"
	end
end

  
 def create #action
	@contects = Contect.new(emp_params)
	if @contects.save
		redirect_to "/contects"
	else
		render(:new)
	end  	
  end

  def destroy
  	@contects = Contect.find_by(id: params[:id])
  	if @contects.destroy
  		redirect_to "/contects"
	else
		redirect_to "/contects"
	end
  end

  def emp_params
  	params.require(:contect).permit(:name,:email,:mobile, :city, :state)
  end
end


 


