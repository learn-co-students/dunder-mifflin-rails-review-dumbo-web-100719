class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update]

    def index
        @employees = Employee.all
    end

    def show 
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(employees_params)
        redirect_to @employee
    end

    def edit
    end

    def update
         if valid?
            @employee.update(employees_params) 
            redirect_to @employee
        else 
            render :new, :flash => { :error => "Cannot have existing alias or job title!" }
        end
    end

    private

    def employees_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end

    def set_employee
        @employee = Employee.find(params[:id])
    end

    
end
