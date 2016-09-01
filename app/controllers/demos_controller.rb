class DemosController < ApplicationController
  def index
   @demos = Demo.all
 end

 def show
   @demo = Demo.find(params[:id])
 end

 def new
   @demo = Demo.new
   @submit = "Start Your Demo"
 end

 def create
   @demo = Demo.new(demo_params)
   if @demo.save
     flash[:notice] = "Request successfully submitted!"
     redirect_to "/demos/#{@demo.id}"
   else
     flash[:notice] = "There were problems saving your request."
    #  flash[:errors] = @laundromat.errors.full_messages.join(", ")
     redirect_to new_demo_path
   end
 end
 #
 # def edit
 #   @laundromat = Laundromat.find(params[:id])
 #   @submit = "Save Changes"
 # end
 #
 # def update
 #   @laundromat = Laundromat.find(params[:id])
 #   @laundromat.update(laundromat_params)
 #   if @laundromat.save
 #     flash[:notice] = "Laundromat successfully saved!"
 #     redirect_to "/laundromats/#{@laundromat.id}/#main"
 #   else
 #     flash[:notice] = "There were problems saving your laundromat."
 #     flash[:errors] = @laundromat.errors.full_messages.join(", ")
 #     render :edit
 #   end
 # end
 #
 # def destroy
 #   Laundromat.destroy(params[:id])
 #   if !@laundromat
 #     flash[:notice] = "Laundromat deleted"
 #     redirect_to laundromats_path(:anchor => "main")
 #   else
 #     render :show
 #   end
 # end
 #
 private

 def demo_params
   params.require(:demo).permit(:first_name, :last_name, :email, :password, :project_name, :organization_name)
 end
end
