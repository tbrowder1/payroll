class PayrollExceptsController < ApplicationController
  before_action :set_payroll_except, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /payroll_excepts
  def index
    @payroll_excepts = PayrollExcept.all
  end

  # GET /payroll_excepts/1
  def show
  end

  # GET /payroll_excepts/new
  def new
    @payroll_except = current_user.payroll_excepts.build
  end

  # GET /payroll_excepts/1/edit
  def edit
  end

  # POST /payroll_excepts
  def create
    @payroll_except = current_user.payroll_excepts.build(payroll_except_params)
      if @payroll_except.save
        redirect_to @payroll_except, notice: 'Payroll Exception was successfully created.' 
      else
        render :new 
      end
    end
  

  # PATCH/PUT /payroll_excepts/1
  def update
      if @payroll_except.update(payroll_except_params)
        redirect_to @payroll_except, notice: 'Payroll Exception was successfully updated.' 
      else
        render :edit 
      end
    end
  

  # DELETE /payroll_excepts/1
  def destroy
    @payroll_except.destroy
      redirect_to payroll_excepts_url, notice: 'Payroll Exception was successfully deleted.' 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payroll_except
      @payroll_except = PayrollExcept.find(params[:id])
    end

    def correct_user
      @payroll_except = current_user.payroll_excepts.find_by(id: params[:id])
      redirect_to payroll_excepts_path, notice: "Not authorized to edit this Payroll Exception" if @payroll_except.nil?
    end  

    # Never trust parameters from the scary internet, only allow the white list through.
    def payroll_except_params
      params.require(:payroll_except).permit(:name, :location, :typeofexception, :totalhours, :comments, :date)
      
    end

