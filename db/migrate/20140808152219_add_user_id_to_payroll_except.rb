class AddUserIdToPayrollExcept < ActiveRecord::Migration
  def change
    add_column :payroll_excepts, :user_id, :integer
    add_index :payroll_excepts, :user_id
  end
end
