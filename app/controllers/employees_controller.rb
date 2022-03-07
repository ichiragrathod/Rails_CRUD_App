class EmployeesController < ApplicationController
   
    def destroy
        
        @employee=Employee.find(params[:id])
        @employee.destroy
        redirect_to employees_path
    end

    def show
        @employee=Employee.find(params[:id])
    end













    def edit
        @employee=Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        if @employee.update(params.require(:employee).permit(:name,:city,:tech))
            flash[:notice]="Employee updated successfully."
            redirect_to @employee
        else
            render 'edit'
        end
    end








    def index
        @employees=Employee.all 
    end

    def new
        @employee=Employee.new
    end

    def create
      @employee = Employee.new(params.require(:employee).permit(:name,:city,:tech))
      
      if @employee.save
        flash[:notice]="Employee details was created successfully."
        redirect_to employee_path(@employee)
      else
        render 'new'
      end

    end

    


end
