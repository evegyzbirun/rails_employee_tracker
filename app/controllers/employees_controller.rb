class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
    render :index
  end

  def new
    @division = Division.find(params[:division_id])
    @employee = @division.employees.new
    render :new
  end

  def create
    @division = Division.find(params[:division_id])
    @employee = @division.employees.new(employee_params)
    if @employee.save
      redirect_to division_path(@division)
    else 
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    render :edit
  end

  def show
    @division = Division.find(params[:division_id])
    @employee = Employee.find(params[:id])
    @projects = Project.all
    render :show
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      flash[:notice] = "Employee Updated"
      redirect_to division_path(@division)
    else
      render :edit
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    flash[:notice] = "Employee Deleted"
    redirect_to division_path(@division)
  end

  private
    def employee_params
      params.require(:employee).permit(:name)
    end
end