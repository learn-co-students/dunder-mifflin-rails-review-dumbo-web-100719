class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
        @dogs = Dog.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(strong_params)
        @employee.save
        redirect_to @employee
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(strong_params)
        redirect_to @employee
    end
    
    
    private

    def strong_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office)
    end
end
