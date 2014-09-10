class AddTotalHoursToPayrollExcepts < ActiveRecord::Migration
  def change
    add_column :payroll_excepts, :totalhours, :integer
  end
end
