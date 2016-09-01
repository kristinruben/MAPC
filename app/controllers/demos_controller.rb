class DemosController < ApplicationController
  def index
   @demos = Demo.all
 end

 def new
   @demo = Demo.new
   @submit = "Start Your Demo"
 end

 def create
   @demo = Demo.new(demo_params)
   if @demo.save
     flash[:notice] = "Request successfully submitted! Please check your email for further instructions."
     redirect_to demos_path
   else
     flash[:notice] = "There were problems saving your request."
     redirect_to new_demo_path
   end
 end

 private

 def demo_params
   params.permit(:first_name, :last_name, :email, :password, :project_name, :organization_name)
 end
end
