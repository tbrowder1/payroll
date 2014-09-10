class AddCommentsToPayrollExcepts < ActiveRecord::Migration
  def change
    add_column :payroll_excepts, :comments, :string
  end
end
