class AddContractToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :contract, :string
  end
end
