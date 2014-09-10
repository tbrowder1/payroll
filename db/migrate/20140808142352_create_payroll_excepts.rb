class CreatePayrollExcepts < ActiveRecord::Migration
  def change
    create_table :payroll_excepts do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
