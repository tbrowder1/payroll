class AddLocationToPayrollExcepts < ActiveRecord::Migration
  def change
    add_column :payroll_excepts, :location, :string
  end
end
