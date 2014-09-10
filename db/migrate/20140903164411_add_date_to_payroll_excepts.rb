class AddDateToPayrollExcepts < ActiveRecord::Migration
  def change
    add_column :payroll_excepts, :date, :string
  end
end
