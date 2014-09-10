class AddOperatorToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :operator, :string
  end
end
