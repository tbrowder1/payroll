class AddSalesmanToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :salesman, :string
  end
end
