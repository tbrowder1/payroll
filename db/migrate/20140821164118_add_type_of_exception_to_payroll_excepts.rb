class AddTypeOfExceptionToPayrollExcepts < ActiveRecord::Migration
  def change
    add_column :payroll_excepts, :typeofexception, :string
  end
end
